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
        $data['loggedIn'] = $this->getLoggedIn();
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
            $data['loggedIn'] = $this->getLoggedIn();
            $data['items'] = $item;
            $data['slug'] = $slug;
            $this->load->template('news/article/article',$data);
        }
    }

     public function delete($slug)
    {
        $this->checkUser();
        if($slug == NULL){show_404();}
        
        $article = $this->news_model-> get_article($slug);
        if(empty($article)){show_404();}
        $data = $article[0];
        $data['slug'] = $slug;
        $data['loggedIn'] = $this->getLoggedIn();

        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('confirm', 'confirm' ,'required');

        if($this->form_validation->run() == FALSE){
            $this->load->template('news/article/delete',$data);
       }
       else{
        $this->news_model->delete_news($slug);
          redirect('/news','refresh');
       }
    }

    public function add(){
        $this->checkUser();
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title','Title','required');
        $this->form_validation->set_rules('body','Body','required');
        $data['loggedIn'] = $this->getLoggedIn();
        
        if($this->form_validation->run() == FALSE){
             $this->load->template('news/article/add');
        }
        else{
           $this->news_model->add();
           redirect('/news','refresh');
        }
    }

    public function edit($slug){
        $this->checkUser();
        if($slug == NULL){show_404();}
        
        $article = $this->news_model-> get_article($slug);
        if(empty($article)){show_404();}
        $data = $article[0];
        $data['slug'] = $slug;
        $data['loggedIn'] = $this->getLoggedIn();

        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title','Title','required');
        $this->form_validation->set_rules('body','Body','required');
        
        if($this->form_validation->run() == FALSE){
             $this->load->template('news/article/edit',$data);
        }
        else{
           $this->news_model->edit($data);
           redirect('/news','refresh');
        }
    }

    private function getLoggedIn()
    {
        $this->load->library('ion_auth');
        return $this->ion_auth->logged_in();
    }

    private function checkUser(){
        $this->load->library('ion_auth');
        if (!$this->ion_auth->logged_in())
        {
            redirect('auth/login');
        }
    }

   
}
