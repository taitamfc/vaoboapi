<?php
include_once SYSTEM . 'BaseModel.php';
class DoiDauModel extends BaseModel
{
    private $_add_time 	= 7*60*60;
    private $_table = 'app_final_doidau';

    public function __construct(){
        parent::__construct();
        $this->setTable($this->_table);
    }
    /* MODEL */
    public function getAll(){
    	$cols = [];
		$items = $this->_db->ObjectBuilder()->get ($this->_table,null,$cols);

        foreach ($items as $item) {
            $item->body = json_decode($item->body);
        }
		return $items;	
    }
    public function saveAll($items){
    	foreach ($items as $data) {
            $e = $this->_getItemByLink($data['link']);
            if( $e ){
                $this->update($e->id,$data);
            }else{
                $this->store($data);
            }
    	}
    }

    private function _getItemByLink($link){
        $this->_db->where ('link', $link);
        $item = $this->_db->ObjectBuilder()->getOne($this->_table,"id, link");
        return $item;
    }

    /* API */
    public function apiGetAll(){
    	$objLibrary = $this->loadLibrary('SourceFcTables');
    	$items = $objLibrary->getAll();
        return $items;
    }

    public function apiGetDetail( $link = '' ){
    	if( !$link ){
            $this->_db->where('crawled',0);
            $item    = $this->_db->ObjectBuilder()->getOne($this->_table);
            $link   = $item->link;
        }



        $objLibrary = $this->loadLibrary('SourceFcTables');
        $data = $objLibrary->find($link);

        pr($data);
        die();
        
        $return['data'] = $data;
        $return['id']   = $item->id;

        return $return;
    }
}
