<html>
<body>
<h1><?=($items[0]['title']);?></h1>
<p><?=($items[0]['body']);?></p>
<p><?=($items[0]['create_at']);?></p>
<p><?=($items[0]['created_by']);?></p>
<a href="delete/?id=<?php echo $row->id;?>" >Delete</a>
<?php
//var_dump($items);
?>
</body>
</html>
