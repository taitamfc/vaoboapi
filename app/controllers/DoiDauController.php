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
        $data       = $return['data'];

        if(!$return){
            $this->resJson(['msg'=>'Job done'],1);
        }

        $data['crawled']= 1;
        $objModel->update($return['id'],$data);

        $res['msg'] = 'Crawled '.$return['id'];
        $this->resJson($res,1);
    }
}
