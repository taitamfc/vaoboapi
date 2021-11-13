<?php
/**
* BaseController
*/
include_once LIBRARIES.'MysqliDb.php';
class BaseModel
{
    protected   $_db;
    private     $_table = null;

    public function __construct(){
        $this->_db = new MysqliDb(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    }

    protected function setTable($_table){
        $this->_table = $_table;
    }

    public function loadLibrary($library)
    {
        include_once LIBRARIES.'simple_html_dom.php';
        include_once LIBRARIES.'Curl.php';
        if (!file_exists(LIBRARIES . $library.'.php')) {
            die('LIBRARIES: ' . $library . ' file not found');
        }
        include_once LIBRARIES . $library.'.php';
        return new $library;
    }

    public function store($data){
        $this->_db->insert ($this->_table, $data);
    }
    public function update($id,$data){
        $this->_db->where ('id', $id);
        $this->_db->update ($this->_table, $data);
    }
    public function sanitize_title($title){
        return $title;
    }
}
