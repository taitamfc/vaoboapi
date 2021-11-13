<?php
/**
* BaseController
*/

class BaseController
{
    /**
     * load the view
     * @param  string $view   view name
     * @param  array  $params additional variables to pass in view
     * @return void
     */
    public function resJson($data,$status = 1){
        $data['status'] = $status;
        if( isset($data['items']) ){
            $data['count']  = count($data['items']);
        }        
        header('Content-Type: application/json; charset=utf-8');
        echo json_encode($data);
        die();
    }
    public function view($view, $params = [])
    {
        if (!file_exists(VIEWS . $view.'.php')) {
            die('View: ' . $view . ' file not found');
        }
        if (count($params)) {
            extract($params);
        }
        include VIEWS . $view.'.php';
    }

    /**
     * load the model
     * @param  string $model  model name
     * @return object         model class object
     */
    public function loadModel($model)
    {
        if (!file_exists(MODELS . $model.'.php')) {
            die('MODEL: ' . $model . ' file not found');
        }
        include MODELS . $model.'.php';
        return new $model;
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
}
