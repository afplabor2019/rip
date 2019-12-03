<html>
<body>
<h1><?=$title?> </h1>
    <?php echo form_open('news/article/'.$slug.'/delete'); ?>    

    <?=form_button(array('name' => 'submit', 'type' => 'submit'), "Are you sure you want to remove this article?")?><br/>   

    <?=form_input(array('name' =>'confirm','style'=>'display:none'),"yes")?><br/>

    <?php echo form_close(); ?>
    
    <a href =<?=site_url('news/')?>><p>Cancel action</p></a>
</body>
</html>
