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
            $this->load->template('news/article/article',$data);
        }
    }

     public function delete($slug)
    {
        if($slug == NULL){show_404();}
        
        $article = $this->news_model-> get_article($slug);
        if(empty($article)){show_404();}
        $data = $article[0];
        $data['slug'] = $slug;

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
       
        $this->load->helper('form');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('title','Title','required');
        $this->form_validation->set_rules('body','Body','required');
        
        if($this->form_validation->run() == FALSE){
             $this->load->template('news/article/add');
        }
        else{
           $this->news_model->add();
           redirect('/news','refresh');
        }
    }

    public function edit($slug){
        if($slug == NULL){show_404();}
        
        $article = $this->news_model-> get_article($slug);
        if(empty($article)){show_404();}
        $data = $article[0];
        $data['slug'] = $slug;

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

    /* TODO 
    
        implement adding article

        $this->load->helper('text');

    */

}
