<head>
<link rel = "stylesheet" type = "text/css" 
   href = "<?php echo base_url(); ?>style/css/default.css">
</head>
<html>
<body>
<h2>Edit Article</h2>
<?php echo form_open('news/edit/'.$slug); ?>    

    <?=form_label('Title', 'title')?><br/>
    <?=form_error('title')?>
    <?=form_input('title',$title)?><br/>

    <?=form_label('Body', 'body')?><br/>
    <?=form_error('body')?>
    <?=form_textarea('body',$body)?><br/>
       
    <?=form_button(array('name' => 'submit', 'type' => 'submit'), "Edit article")?><br/>   
    
<?php echo form_close(); ?>
</body>
</html>