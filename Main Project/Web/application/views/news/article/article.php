<head>
<link rel = "stylesheet" type = "text/css" 
   href = "<?php echo base_url(); ?>style/css/default.css">
</head>
<html>
<body>
    <div id="page" class="container">
            <div id="content">
                <div class="title">
                    <h1><?=($items[0]['title']);?></h1>
                </div>
                <div class="container">
                    <div id="writer">
                    <p><strong><?=($items[0]['writer']);?></strong></p>
                    </div>
                    <div id="publication_date">
                    <p><?=($items[0]['created_at']);?> </p>
                    </div>
                </div>
                <div>
                    <hr class="border">
                    <p><?=($items[0]['body']);?></p>
                </div>
            </div>
            <?php if ($loggedIn === true): ?>
               <div><a href=<?php echo base_url()."index.php/news/edit/".$slug?>>Edit</a></div>
               <div><a href=<?php echo base_url()."index.php/news/article/".$slug."/delete"?>>Delete</a></div>
			   <?php endif; ?>                    

    </div>
</body>
</html>