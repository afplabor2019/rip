<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {
    public function __construct() {
        parent::__construct();

        $this->load->model('news_model');
      
    }

	public function index()
	{
        $news = $this->news_model->get_news();
        $data['items'] = $news;
        
		$this->load->template('news/news',$data);
    }

    public function article($slug = null){
        if($slug == null){
            show_404();
        }
        
        $item = $this->news_model->get_article($slug);
        
        if(empty($item)){
            show_404();
        }
        else {
            $data['items'] = $item;
            $this->load->view('news/article',$data);
        }
    }

    /* TODO 
    
        implement adding article

        $this->load->helper('text');

    */

}
