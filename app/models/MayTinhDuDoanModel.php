<?php
include_once SYSTEM . 'BaseModel.php';
class MayTinhDuDoanModel extends BaseModel
{
    private $_add_time 	= 7*60*60;
    private $_table = 'app_final_maytindudoan';

    public function __construct(){
        parent::__construct();
        $this->setTable($this->_table);
    }
    /* MODEL */
    public function getAll(){
    	$cols = [];
        //$this->_db->where('hw_odd','-','!=');
        $this->_db->where('game_date',date('Y-m-d H:i:s'),'>=');
        $this->_db->orderBy('game_date','ASC');
		$items = $this->_db->ObjectBuilder()->get ($this->_table,null,$cols);
        foreach ($items as $item) {
            $item->cards        = json_decode($item->cards);            
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

            $data = (array)$data;
            $data['system_id'] = $data['id'];
            $data['game_date'] = $this->_converZTTime($data['game_date']);
            $e = $this->_getItemBySourceId($data['id']);

            unset($data['id']);
            if( $e ){
                $this->update($e->id,$data);
            }else{
                $this->store($data);
            }
    	}
    }

    private function _converZTTime($time){
        //$time = str_replace('T',' ',$time);
        //$time = str_replace('.000Z','',$time);
        $time = date_create($time);
        $time = date_format($time, 'Y-m-d H:i:s');
        $time = date('Y-m-d H:i:s', strtotime($time) + $this->_add_time);
        
        return $time;
    }

    private function _getItemBySourceId($id){
        $this->_db->where ('system_id', $id);
        $item = $this->_db->ObjectBuilder()->getOne($this->_table,"id, system_id");
        return $item;
    }

    /* API */
    public function apiGetAll(){
    	$objLibrary = $this->loadLibrary('SourceAskbettor');
        if( isset( $_SESSION['MayTinhDuDoan_apiGetAll'] ) ){
            return $_SESSION['MayTinhDuDoan_apiGetAll'];
        }else{
            $items      = $objLibrary->getAll();
            $_SESSION['MayTinhDuDoan_apiGetAll'] = $items;
        }    	
        return $items;
    }

    public function apiGetDetail( $link = '' ){
    	if( !$link ){
            $this->_db->where('crawled',0);
            $this->_db->where('hw_odd','-','!=');
            $item   = $this->_db->ObjectBuilder()->getOne($this->_table);
            $link   = $item->l_alias.'/'.$item->ht_alias.'_vs_'.$item->at_alias;
        }

        if(!$link) return false;

        $objLibrary = $this->loadLibrary('SourceAskbettor');
        $data       = $objLibrary->find($link);
        $data->semilars = $objLibrary->get_filter_semilars($data->match_id);

        $cards = [];
        
        foreach( $data->cards as $i => $data_cards ){
            foreach( $data_cards->cards as $j => $data_card ){
                $cards['cards_'.$i.'_'.$j] = $data_card->id;
            }
        }

        foreach( $data->semilars->cards as $k => $semilar ){
            $cards['cards_2_'.$k] = $semilar->id;
        }

        //remove info
        $data->games_links  = [];
        $data->semilars     = [];
        $data->cards        = [];

        foreach( $cards as $k_c => $card_id ){
            $data->cards[$k_c] = $objLibrary->get_card_detail($card_id);
        }

        

        $return['cards'] = $data->cards;
        $return['id']   = $item->id;

        return $return;
    }
}
