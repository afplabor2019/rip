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
    public function deletenews($slug)
    {
        $this->load->database();
        $this->db-->where('id',$slug);
        $this->db->delete('news');
        return true;
    }

    /* TODO

        edit querry so created_by will show the author not its id.
    
    */
}