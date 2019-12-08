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
                    <h1><?=($item['title']);?></h1>
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
        <?php endforeach; ?>
    </div>
<?php
//var_dump($items);
?>
</div>
</body>
</html>
