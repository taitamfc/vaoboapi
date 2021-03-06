<?php
// Include base controller to support basic framework fuctions
include SYSTEM . 'BaseController.php';

/**
* Home Controller
*/
class SoikeoController extends BaseController
{
    public function index()
    {
       $objModel 	= $this->loadModel('SoiKeoModel');
       $items 		= $objModel->getAll();
       $return = [ 'items'  => $items ];
       $this->resJson($return,1);
    }

    public function show()
    {
       $id       = (isset( $_GET['id'] )) ? $_GET['id'] : 0;
       $objModel = $this->loadModel('SoiKeoModel');
       $item     = $objModel->find($id);
       $return = [ 'item'  => $item ];
       $this->resJson($return,1);
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
    	$objModel = $this->loadModel('SoiKeoModel');
        $items = $objModel->apiGetAll();
        $objModel->saveAll($items);

        $res['msg'] = __METHOD__;
        $this->resJson($res,1);
    }
    public function crawDetail(){
    	$objModel 		= $this->loadModel('SoiKeoModel');
        $return 		= $objModel->apiGetDetail();

        if(!$return){
            $this->resJson(['msg'=>'Job done'],1);
        }

        $data 			= [];
        $data['body'] 	= json_encode($return['data']);
        $data['crawled']= 1;
        $objModel->update($return['id'],$data);

        $res['msg'] = 'Crawled '.$return['id'];
        $this->resJson($res,1);
    }
}
