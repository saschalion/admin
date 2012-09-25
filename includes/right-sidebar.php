<div class="sidebar right-sidebar">
	<div class="sidebar-block new">
		<h2>
			<span>Новое на сайте</span>
		</h2>
		<ul>
			<?php last_articles($node); ?>
		</ul>
		<div class="sidebar-shadow"></div>
	</div>
	<div class="sidebar-block video">
		<h2>
			<span>Видеокурс по ремонту</span>
		</h2>
		<ul>
			<?php show_video_course_articles(); ?>
		</ul>
		<div class="sidebar-shadow"></div>
	</div>
</div>