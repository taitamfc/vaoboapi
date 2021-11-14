<?php
// Include base controller to support basic framework fuctions
include SYSTEM . 'BaseController.php';

/**
* Home Controller
*/
class MayTinhDuDoanController extends BaseController
{
    public function index()
    {
       $objModel 	= $this->loadModel('MayTinhDuDoanModel');
       $items 		= $objModel->getAll();
       $return = [ 'items'  => $items ];
       $this->resJson($return,1);
    }
	
	public function viewMatch()
    {
       $match_id       = (isset( $_GET['match_id'] )) ? $_GET['match_id'] : 0;
       $objModel = $this->loadModel('MayTinhDuDoanModel');
       $item     = $objModel->findByMatchId($match_id);
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

    	$objModel  = $this->loadModel('MayTinhDuDoanModel');
        $result    = $objModel->apiGetAll();
        $objModel->saveAll($result->predictions);

        $res['msg'] = __METHOD__;
        $this->resJson($res,1);
    }
    public function crawDetail(){
        $objModel 		= $this->loadModel('MayTinhDuDoanModel');
        $return 		= $objModel->apiGetDetail();

        if(!$return){
            $this->resJson(['msg'=>'Job done'],1);
        }
        
        $data 			= [];
        $data['cards'] 	= json_encode($return['cards']);
        $data['crawled']= 1;
        $objModel->update($return['id'],$data);
        $res['msg'] = 'Crawled '.$return['id'];
        $this->resJson($res,1);
    }
}
