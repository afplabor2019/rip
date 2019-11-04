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
}
