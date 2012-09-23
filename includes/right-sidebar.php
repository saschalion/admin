<div class="sidebar right-sidebar">
	<div class="sidebar-block new">
		<h2>
			<span>Новое на сайте</span>
		</h2>
		<ul>
			<?php lastArticles($node); ?>
		</ul>
		<div class="sidebar-shadow"></div>
	</div>
	<div class="sidebar-block video">
		<h2>
			<span>Видеокурс по ремонту</span>
		</h2>
		<ul>
			<?php showVideoCourseArticles(); ?>
		</ul>
		<div class="sidebar-shadow"></div>
	</div>
</div>