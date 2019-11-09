<?php
class News_model extends CI_Model{
    //put your code here
    public function __construct() {
        parent::__construct();
        
        $this->load->database();
    }
    
    public function get_news(){
        $this->db->select('title, body, create_at,  created_by');
        $this->db->from('article');
        $this->db->where('active = 1');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function get_article($slug){
        $this->db->select('title, body, create_at,  created_by');
        $this->db->from('article');
        $array = array('active' => 1, 'slug' => $slug);
        $this->db->where($array);
        $query = $this->db->get();
        return $query->result_array();
    }

    /* TODO

        edit querry so created_by will show the author not its id.
    
    */
}