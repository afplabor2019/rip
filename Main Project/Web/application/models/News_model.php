<?php
class News_model extends CI_Model{
    //put your code here
    public function __construct() {
        parent::__construct();
        
        $this->load->database();
    }
    
    public function get_news(){
       //SELECT title,body, create_at, CONCAT(first_name,' ', last_name) as name FROM users as u,article as a WHERE a.active = 1 AND u.id = a.created_by
        $this->db->select('title, body, created_at,  CONCAT(first_name,\' \', last_name) as writer');
        $this->db->from('users as u,article as a');
        $this->db->where('a.active = 1 AND u.id = a.created_by');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function get_article($slug){
        $this->db->select('title, body, created_at,  CONCAT(first_name,\' \', last_name) as writer');
        $this->db->from('users as u,article as a');
        $this->db->where('a.active = 1 AND u.id = a.created_by AND a.slug = \''.$slug.'\'');
        $query = $this->db->get();
        return $query->result_array();
    }
    
    public function delete_news($slug)
    {
        $this->db->set('active', 0);
        $this->db->where('slug', $slug);
        return $this->db->update('article');
    }

   
    public function add(){
        $this->load->helper('url');
        $this->load->helper('text');
        $data = array(
            'title' => $this->input->post('title'),
            'slug'  => url_title(
                            convert_accented_characters($this->input->post('title')),
                            'dash',
                            TRUE
                        ),
            'body'  => $this->input->post('body'),
            'created_by'  => 1//$this->ion_auth->get_user_id()
        );
        
        return $this->db->insert('article',$data);
    }

    public function edit($article)
    {
        $this->db->set('title', $this->input->post('title'));
        $this->db->set('body',  $this->input->post('body'));
        $this->db->where('slug', $article['slug']);
        $this->db->update('article');

        $this->load->helper('url');
        $this->load->helper('text');
        $slug = url_title(
            convert_accented_characters($this->input->post('title')),
            'dash',
            TRUE
        );
        $this->db->set('slug', $slug);
        $this->db->where('title', $this->input->post('title'));

        return $this->db->update('article');
    }  
}