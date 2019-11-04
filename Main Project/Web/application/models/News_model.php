<?php
class News_model extends CI_Model{
    //put your code here
    public function __construct() {
        parent::__construct();
        
        $this->load->database();
    }
    
    public function get_news(){
        $this->db->select('active, title, body, create_at,  created_by');
        $this->db->from('article');
        $query = $this->db->get();
        return $query->result_array();
    }
}
