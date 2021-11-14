<?php
// Include base controller to support basic framework fuctions
include SYSTEM . 'BaseController.php';

/**
* Default Controller
*/
class DefaultController extends BaseController
{
    public function index()
    {
        $res['msg'] = __METHOD__;
      	$this->resJson($res,1);
    }

    public function testDoiDau(){
        $this->view('testDoiDau');
    }
    public function testMayTinhDuDoan(){
        $this->view('testMayTinhDuDoan');
    }
    public function testSoiKeo(){
        $this->view('testSoiKeo');
    }

    public function runCron(){

        $h = date('H');

        echo $h;

        $res['msg'] = __METHOD__;
        $this->resJson($res,1);
    }
}
