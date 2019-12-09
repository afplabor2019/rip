<?php
class My_Loader extends CI_Loader {
    public function template($template_name, $vars = array())
    {
        $this->view('header', $vars);
        $this->view($template_name, $vars);
    }
}