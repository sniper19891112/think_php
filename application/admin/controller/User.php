<?php
namespace app\admin\controller;

use app\admin\service\NodeService;
use library\Controller;
use library\tools\Data;
use think\Db;

/**
 * 系统用户管理
 * Class User
 * @package app\admin\controller
 */
class User extends Controller
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'SystemUser';

    /**
     * 系统用户管理
     * @auth true
     * @menu true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function index()
    {
        $this->title = '系统用户管理';
        $query = $this->_query($this->table)->like('username,phone,mail')->equal('status');
        $query->dateBetween('login_at,create_at')->where(['is_deleted' => '0'])->order('id desc')->page();
    }

    /**
     * 添加系统用户
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function add()
    {
        $this->applyCsrfToken();
        $this->_form($this->table, 'form');
    }

    /**
     * 编辑系统用户
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function edit()
    {
        $this->applyCsrfToken();
        $this->_form($this->table, 'form');
    }

    /**
     * 修改用户密码
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function pass()
    {
        $this->applyCsrfToken();
        if ($this->request->isGet()) {
            $this->verify = false;
            $this->_form($this->table, 'pass');
        } else {
            $post = $this->request->post();
            if ($post['password'] !== $post['repassword']) {
                $this->error('两次输入的密码不一致！');
            }
            $result = NodeService::checkpwd($post['password']);
            if (empty($result['code'])) {
                $this->error($result['msg']);
            }

            if (Data::save($this->table, ['id' => $post['id'], 'password' => md5($post['password'])], 'id')) {
                $this->success('密码修改成功，下次请使用新密码登录！', '');
            } else {
                $this->error('密码修改失败，请稍候再试！');
            }
        }
    }

    /**
     * 表单数据处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function _form_filter(&$data)
    {
        if ($this->request->isPost()) {
            // 刷新系统授权
            NodeService::applyUserAuth();
            // 用户权限处理
            $data['authorize'] = (isset($data['authorize']) && is_array($data['authorize'])) ? join(',', $data['authorize']) : '';
            // 用户账号重复检查

            $map['phone'] = $data['phone'];
            $map['is_deleted'] = 0;
            $chekphone = Db::name($this->table)->where($map)->count();
            $chek = Db::name($this->table)->where($map)->find();

            if (isset($data['id'])) {
                unset($data['username']);
            } elseif (Db::name($this->table)->where(['username' => $data['username'], 'is_deleted' => '0'])->count() > 0) {
                $this->error("账号{$data['username']}已经存在，请使用其它账号！");
            }

            if (isset($data['id'])) {
                if ($chekphone > 0 && $chek['id'] != $data['id']) {
                    $this->error("电话{$data['phone']}已经存在，请使用其它电话！");
                }
                if ($chekphone > 1) {
                    $this->error("电话{$data['phone']}已经存在，请使用其它电话！");
                }
            } else {
                if ($chekphone > 0) {
                    $this->error("电话{$data['phone']}已经存在，请使用其它电话！");
                }
            }

        } else {
            $data['authorize'] = explode(',', isset($data['authorize']) ? $data['authorize'] : '');
            $this->authorizes = Db::name('SystemAuth')->where(['status' => '1'])->order('sort desc,id desc')->select();
        }
    }

    /**
     * 禁用系统用户
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止操作！');
        }
        $this->applyCsrfToken();
        $this->_save($this->table, ['status' => '0']);
    }

    /**
     * 启用系统用户
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume()
    {
        $this->applyCsrfToken();
        $this->_save($this->table, ['status' => '1']);
    }

    /**
     * 删除系统用户
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function remove()
    {
        if (in_array('10000', explode(',', $this->request->post('id')))) {
            $this->error('系统超级账号禁止删除！');
        }
        $this->applyCsrfToken();
        $this->_delete($this->table);
    }

    public function amazon_product()
    {
        // Path to your JSON file (adjust the path according to your directory structure)
        $filePath = './amazon_product.json'; // Example: inside 'public/data/' directory

        // Check if the file exists
        if (file_exists($filePath)) {
            // Get the file contents
            $jsonContent = file_get_contents($filePath);

            // Decode the JSON into a PHP array or object
            $data = json_decode($jsonContent, true); // true for array, false for object

            // Check for JSON decoding errors
            if (json_last_error() === JSON_ERROR_NONE) {



                // Process or return the data
                return json($data); // Return as a JSON response or handle it as needed
            } else {
                // Handle JSON decoding error
                return json(['error' => 'Invalid JSON format']);
            }
        } else {
            // Handle file not found error
            return json(['error' => 'File not found']);
        }
    }

}
