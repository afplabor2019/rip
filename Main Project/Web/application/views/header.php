<head>

<link rel = "stylesheet" type = "text/css" href = <?php echo base_url()."style/css/default.css"?>>

</head>


<div id="menu-wrapper">
	<div id="menu" class="container">
		<ul>
			<li><a href=<?php echo base_url()."index.php/news"?>>news</a></li>
			<li><a href="#">travel</a></li>
			<li><a href="#">sport</a></li>
			<?php if ($loggedIn === true): ?>
				<li><a href=<?php echo base_url()."index.php/logout"?>>Logout</a></li>
				<li><a href=<?php echo base_url()."index.php/add"?>>Create new</a></li>
			<?php else:?>
				<li><a href=<?php echo base_url()."index.php/login"?>>login</a></li>
			<?php endif; ?>
        </ul>
    </div>
</div>