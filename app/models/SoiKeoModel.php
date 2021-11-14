<?php
include_once SYSTEM . 'BaseModel.php';
class SoiKeoModel extends BaseModel
{
    private $_add_time 	= 7*60*60;
    private $_table = 'app_final_soikeo';

    public function __construct(){
        parent::__construct();
        $this->setTable($this->_table);
    }
    /* MODEL */
    public function getAll(){
    	$cols = [];

        $this->_db->where('game_date_origin',date('Y-m-d H:00:00' ,strtotime('-1 hour') ),'>=');
        $this->_db->orderBy('id','ASC');
		$items = $this->_db->ObjectBuilder()->get ($this->_table,null,$cols);

        foreach ($items as $item) {
            $item->body = json_decode($item->body);
        }
		return $items;	
    }
    public function find($id){
        $this->_db->where ('id', $id);
        $item = $this->_db->ObjectBuilder()->getOne($this->_table);
        $item->body = json_decode($item->body);
        return $item;
    }
    public function saveAll($items){
    	foreach ($items['items'] as $data) {
            $e = $this->_getItemBySourceId($data['source_id']);
            if( $e ){
                $this->update($e->id,$data);
            }else{
                $this->store($data);
            }
    	}
    }

    private function _getItemBySourceId($source_id){
        $this->_db->where ('source_id', $source_id);
        $item = $this->_db->ObjectBuilder()->getOne($this->_table,"id, source_id");
        return $item;
    }

    /* API */
    public function apiGetAll(){
    	$objLibrary = $this->loadLibrary('SourceSoccerpet');
    	
        if( isset( $_SESSION['SoiKeo_apiGetAll'] ) ){
            return $_SESSION['SoiKeo_apiGetAll'];
        }else{
            $items = $objLibrary->getAll();
            $_SESSION['SoiKeo_apiGetAll'] = $items;
        }  

    	$leagues = [];
        foreach( $items as $key => $item ){
            $objLeague = new stdClass();
            $objLeague->league_id   = $item['league_id'];
            $objLeague->league_name = $item['league_name'];
            $leagues[$objLeague->league_id] = $objLeague;
			
			$items[$key]['game_date_origin'] = date('Y-m-d H:i',strtotime( $items[$key]['game_date'] ));
            $items[$key]['game_date'] = date('d/m H:i',strtotime( $items[$key]['game_date_origin'] ) );			
        }
        $return = [
            'leagues'   => $leagues,
            'items'     => $items,
        ];

        return $return;
    }

    public function apiGetDetail( $link = '' ){
    	if( !$link ){
            $this->_db->where('crawled',0);
            $item    = $this->_db->ObjectBuilder()->getOne($this->_table);
            $link   = $item->link;
        }

        if(!$link) return false;

        $objLibrary = $this->loadLibrary('SourceSoccerpet');
        $data = $objLibrary->find($link);
        
        $return['data'] = $data;
        $return['id']   = $item->id;

        return $return;
    }
}
