<h2>Create Article</h2>
<?php echo form_open('news/add'); ?>    

    <?=form_label('Title', 'title')?><br/>
    <?=form_error('title')?>
    <?=form_input('title')?><br/>

    <?=form_label('Body', 'body')?><br/>
    <?=form_error('body')?>
    <?=form_textarea('body')?><br/>
       
    <?=form_button(array('name' => 'submit', 'type' => 'submit'), "Add article")?><br/>   
    
<?php echo form_close(); ?>