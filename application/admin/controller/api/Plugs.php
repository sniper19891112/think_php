<?php

// +----------------------------------------------------------------------
// | ThinkAdmin
// +----------------------------------------------------------------------
// | 版权所有 2014~2019
// +----------------------------------------------------------------------

// +----------------------------------------------------------------------

// +----------------------------------------------------------------------
// |

// +----------------------------------------------------------------------

namespace app\admin\controller\api;

use app\admin\service\NodeService;
use library\Controller;
use library\File;

/**
 * 后台插件管理
 * Class Plugs
 * @package app\admin\controller\api
 */
class Plugs extends Controller
{

    /**
     * 系统图标选择器
     */
    public function icon()
    {
        $this->title = '图标选择器';
        $this->field = input('field', 'icon');
        $this->fetch();
    }

    /**
     * 获取文件上传参数
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function check()
    {
        $diff1 = explode(',', strtolower(input('exts', '')));
        $diff2 = explode(',', strtolower(sysconf('storage_local_exts')));
        $exts = array_intersect($diff1, $diff2);
        $this->success('获取文件上传参数', [
            'exts' => join('|', $exts),
            'mime' => File::mine($exts),
            'type' => $this->getUploadType(),
            'data' => $this->getUploadData(),
        ]);
    }

    /**
     * 后台通用文件上传
     * @return \think\response\Json
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function upload()
    {
        if (!NodeService::islogin()) {
            $this->error('访问授权失败，请重新登录授权再试！');
        }
        if (!($file = $this->getUploadFile()) || empty($file)) {
            return json(['uploaded' => false, 'error' => ['message' => '文件上传异常，文件可能过大或未上传']]);
        }
        if (!$file->checkExt(strtolower(sysconf('storage_local_exts')))) {
            return json(['uploaded' => false, 'error' => ['message' => '文件上传类型受限，请在后台配置']]);
        }
        if ($file->checkExt('php,sh')) {
            return json(['uploaded' => false, 'error' => ['message' => '可执行文件禁止上传到本地服务器']]);
        }
        $this->safe = boolval(input('safe'));
        $this->uptype = $this->getUploadType();
        $this->extend = pathinfo($file->getInfo('name'), PATHINFO_EXTENSION);
        $name = File::name($file->getPathname(), $this->extend, '', 'md5_file');
        // $info = $this->save('/var/www/html/upload/', $name, file_get_contents($file->getRealPath()), $this->safe);
        $info = File::instance($this->uptype)->save($name, file_get_contents($file->getRealPath()), $this->safe);
        if (is_array($info) && isset($info['url'])) {
            return json(['uploaded' => true, 'filename' => $name, 'url' => $this->safe ? $name : $info['url'], 'info' => $info]);
        } else {
            return json(['uploaded' => false, 'error' => ['message' => '文件处理失败，请稍候再试！']]);
        }
    }

    /**
     * 文件储存在本地
     * @param string $name 文件名称
     * @param string $content 文件内容
     * @param boolean $safe 安全模式
     * @return array|null
     */
    public function save($path, $name, $content, $safe = false)
    {
        try {
            $file = $path . $name;
            file_exists(dirname($file)) || mkdir(dirname($file), 0755, true);
            if (file_put_contents($file, $content)) {
                return $this->info($path, $name, $safe);
            }

        } catch (\Exception $e) {
        }
        return null;
    }

    /**
     * 获取文件信息
     * @param string $name 文件名称
     * @param boolean $safe 安全模式
     * @return array|null
     */
    public function info($path, $name, $safe = false)
    {
        $file = $path . $name;
        return ['file' => $file, 'hash' => md5_file($file), 'url' => $this->base($name), 'key' => "upload/{$name}"];
    }

    /**
     * 获取服务器URL前缀
     * @param string $name 文件名称
     * @param boolean $safe 安全模式
     * @return string|null
     */
    public function base($name = '', $safe = false)
    {
        return "/upload/{$name}";
    }

    /**
     * 生成文件上传参数
     * @return array
     * @throws \think\Exception
     */
    private function getUploadData()
    {
        if ($this->getUploadType() === 'qiniu') {
            $file = File::instance('qiniu');
            return ['url' => $file->upload(true), 'token' => $file->buildUploadToken(), 'uptype' => $this->getUploadType()];
        } else {
            return ['url' => '?s=admin/api.plugs/upload', 'token' => uniqid('local_upload_'), 'uptype' => $this->getUploadType()];
        }
    }

    /**
     * 获取文件上传方式
     * @return string
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    private function getUploadType()
    {
        $this->uptype = input('uptype');
        if (!in_array($this->uptype, ['local', 'oss', 'qiniu'])) {
            $this->uptype = sysconf('storage_type');
        }
        return $this->uptype;
    }

    /**
     * 获取本地文件对象
     * @return \think\File
     */
    private function getUploadFile()
    {
        try {
            return $this->request->file('file');
        } catch (\Exception $e) {
            $this->error(lang($e->getMessage()));
        }
    }

}
