<?php
include_once SYSTEM . 'BaseModel.php';
class DoiDauModel extends BaseModel
{
    private $_add_time 	= 6*60*60;
    private $_table = 'app_final_doidau';

    public function __construct(){
        parent::__construct();
        $this->setTable($this->_table);
    }
    /* MODEL */
    public function getAll(){
    	$cols = [];
        //$this->_db->where('start_date',date('Y-m-d H:i:s', strtotime('-1 hour')),'>=');
        $this->_db->where('start_date',date('Y-m-d H:i:s'),'>=');
        $this->_db->orderBy('start_date','ASC');
		$items = $this->_db->ObjectBuilder()->get ($this->_table,null,$cols);

        foreach ($items as $item) {
            $item->h2h_games 	= json_decode($item->h2h_games);
            $item->recent_games = json_decode($item->recent_games);
            $item->team_stats 	= json_decode($item->team_stats);
            $item->start_d 		= date('d/m',strtotime($item->start_date));
            $item->start_t 		= date('H:s',strtotime($item->start_date));
        }
		return $items;	
    }
	public function findByMatchId($match_id){
    	$this->_db->where ('system_id', $match_id);
        $item = $this->_db->ObjectBuilder()->getOne($this->_table);
		$item->cards        = json_decode($item->cards);       
        return $item;
    }
	
    public function saveAll($items){
    	foreach ($items as $data) {            
            $data['start_date'] = date('Y-m-d H:i:s',$data['start_date']);
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
    	
        if( isset( $_SESSION['DoiDau_apiGetAll'] ) ){
            return $_SESSION['DoiDau_apiGetAll'];
        }else{
            $items = $objLibrary->getAll();
            $_SESSION['DoiDau_apiGetAll'] = $items;
        }       

        return $items;
    }

    public function apiGetDetail( $link = '' ){
    	if( !$link ){
            $this->_db->where('crawled',0);
            $item    = $this->_db->ObjectBuilder()->getOne($this->_table);
            $link   = $item->link;
        }
        
        if(!$link) return false;

        $objLibrary = $this->loadLibrary('SourceFcTables');
        $data = $objLibrary->find($link);

        $data['start_date'] = date('Y-m-d H:i:s',$data['start_date']);

        $return['data'] = $data;
        $return['id']   = $item->id;

        return $return;
    }
}
