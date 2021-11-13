<?php
// Include base controller to support basic framework fuctions
include SYSTEM . 'BaseController.php';

/**
* Default Controller
*/
class DoiDauController extends BaseController
{
    public function index()
    {
        $res['msg'] = __METHOD__;
      	$this->resJson($res,1);
    }

    public function cronAll()
    {
        $this->crawAll();
    }
    public function cronDetail()
    {
        $this->crawDetail();
    }

    public function crawAll(){
    	$objModel 	= $this->loadModel('DoiDauModel');
      	$items 		= $objModel->apiGetAll();
      	$objModel->saveAll($items);

    	$res['msg'] = __METHOD__;
      	$this->resJson($res,1);
    }
    public function crawDetail(){
    	$objModel 	= $this->loadModel('DoiDauModel');
    	$return 	= $objModel->apiGetDetail();

    	pr($return);
    	die();
    }
}
