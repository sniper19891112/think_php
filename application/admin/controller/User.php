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
            $json_data = json_decode($jsonContent, true); // true for array, false for object
            // return json($json_data);

            // Check for JSON decoding errors
            if (json_last_error() === JSON_ERROR_NONE) {
                foreach ($json_data as $item) {
                    $product_count = db('eb_store_product')->where("store_name", $item['title'])->count();
                    if ($product_count == 0 && $item["price"]["value"]) {
                        $brand_count = db('eb_product_brand')->where("name", $item['brand'])->count();
                        if ($brand_count == 0) {
                            $brand_id = db('eb_product_brand')->insertGetId([
                                "name" => $item['brand'],
                                "icon" => "",
                                "sort" => 1,
                                "is_show" => 1,
                            ]);
                        } else {
                            $brand_id = db('eb_product_brand')->where("name", $item['brand'])->select()[0]["id"];
                        }
                        $data = [
                            "mer_id" => 3,
                            "image" => $item['thumbnailImage'],
                            "slider_image" => json_encode($item['highResolutionImages']),
                            "store_name" => $item['title'],
                            "store_info" => $item['title'],
                            "keyword" => trim(explode("›", $item['breadCrumbs'])[0]),
                            "cate_id" => 19,
                            "brand_id" => $brand_id,
                            "category_id" => 365,
                            "guarantee_ids" => "4,3,1,2",
                            "price" => $item["price"]["value"],
                            "vip_price" => 0,
                            "ot_price" => $item["price"]["value"] * 1.3,
                            "postage" => 0,
                            "unit_name" => "set",
                            "sales" => rand(100, 9999),
                            "stock" => rand(1000, 99999),
                            "give_integral" => 0,
                            "cost" => 0.01,
                            "ficti" => rand(10000, 9999),
                            "browse" => rand(1, 9),
                            "sort" => 1,
                            "rank" => 0,
                            "spec_type" => 0,
                            "is_recycle" => 0,
                            "is_show" => 1,
                            "is_forced" => 0,
                            "audit_status" => 1,
                        ];
                        $product_id = db('eb_store_product')->insertGetId($data);
                        db('eb_store_product_attr')->insert([
                            "product_id" => $product_id,
                            "attr_name" => "Specification",
                            "attr_values" => "default",
                            "type" => 0,
                        ]);
                        db('eb_store_product_attr_value')->insert([
                            "product_id" => $product_id,
                            "sku" => "default",
                            "stock" => $data["stock"],
                            "sales" => $data["sales"],
                            "price" => $data["price"],
                            "image" => $data["image"],
                            "cost" => 0.01,
                            "ot_price" => $data["ot_price"],
                            "weight" => 0,
                            "volume" => 0,
                            "brokerage" => 0,
                            "brokerage_two" => 0,
                            "brokerage" => 0,
                            "type" => 0,
                            "quota" => 0,
                            "quota_show" => 0,
                            "attr_value" => '{"Specification":"default"}',
                            "version" => 0,
                        ]);
                        $description = '<ul class="a-unordered-list a-vertical a-spacing-mini">';
                        foreach ($item['features'] as $feature) {
                            $description = $description . '<li class="a-spacing-mini"><span class="a-list-item">' . $feature . '</span></li>';
                        }
                        $description = $description . '</ul>';
                        db('eb_store_product_description')->insert([
                            'product_id' => $product_id,
                            'description' => $description,
                        ]);
                    }
                    sleep(3);
                }
                // Process or return the data
                return json($json_data); // Return as a JSON response or handle it as needed
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
