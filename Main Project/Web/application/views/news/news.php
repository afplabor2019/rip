<head>
<link rel = "stylesheet" type = "text/css" 
   href = "<?php echo base_url(); ?>style/css/default.css">
</head>
<html>
<body>
    <div id="page" class="container">
        <?php foreach ($items as $item): ?>
            <div id="content">
                <div class="title">
                    <h1><a href=<?php echo base_url()."index.php/news/article/".$item['slug']?>><?=($item['title']);?></a></h1>
                </div>
                <div class="container">
                    <div id="writer">
                    <p><strong><?=($item['writer']);?></strong></p>
                    </div>
                    <div id="publication_date">
                    <p><?=($item['created_at']);?> </p>
                    </div>
                </div>
                <div>
                    <hr class="border">
                    <p><?=($item['body']);?></p>
                </div>
            </div>
            <?php if ($loggedIn === true): ?>
				<div><a href=<?php echo base_url()."index.php/news/edit/".$item['slug']?>>Edit</a></div>
                <div><a href=<?php echo base_url()."index.php/news/article/".$item['slug']."/delete"?>>Delete</a></div>
			<?php endif; ?>
        <?php endforeach; ?>
    </div>
<?php
?>
</div>
</body>
</html>
