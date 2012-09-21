<?php include('includes/head.php'); ?>
<body>
   <div class="wrap">
        <div class="header"></div>
        <div class="container container-middle">
            <div class="content">
                <div class="content-wrap">
					<?php include('includes/menu.php'); ?>
                    <div class="text">
                        <h1>Галерея</h1>
						<div class="used">
							<small>
								<strong>
									Доступное пространство:	
								</strong>
								<?php echo round(disk_free_space('/')/1048576, 0) . ' Мб'; ?>
							</small>
							<small>
								<strong>
									из	
								</strong>
								<?php echo round(disk_total_space('/')/1048576, 0) . ' Мб'; ?>
							</small>
							<br><br>
						</div>
						<?php	
							if (isset($_SESSION['user_id'])) {
						?>	
							<ul class="gallery-list clearfix">							
								<?php
									$sql = mysql_query("SELECT*FROM files where user_id='".escape($_SESSION['user_id'])."' ORDER BY id DESC");
									
									while($record = mysql_fetch_array($sql)) {
								?>
								
									<?php
										if($delete) {										
											$sqlUrl = query("SELECT url FROM files where id='".$node."'");
											
											$recordUrl = mysql_fetch_array($sqlUrl);
											
											$filename =  '..' . $recordUrl['url'];

                                            unlink($filename);
											
											$sql = query("DELETE FROM files WHERE id='".escape($node)."';");
                                            $redirect = "<META HTTP-EQUIV=Refresh content=0;URL=gallery.php >";
										}
										echo $redirect;
									?>
									<li>
										<img src="<?php echo $record['url']; ?>" alt=""/></br>
										<div class="file-url">
											<strong>Ссылка</strong>: <?php echo $record['url']; ?> 
										</div>
										<a class="b-actions__link js-confirm" href="gallery.php?node=<?php echo $record['id']; ?>&delete=y">
											<b class="b-actions__icon b-actions__icon_icon_delete"></b>
											<span class="b-actions__link-text">Удалить</a>									
										</a>
										<?php 
											$gallery = usedPictures($record);
											if($gallery[0]) { 
												echo '<div class="used"><small>Используется тут: </small></div>'; 
											} 
											while($recordTwo = mysql_fetch_array($gallery[1])) {
											
												echo '<div class="used">';
												
													$string = $recordTwo['title'];
													
													$result = implode(array_slice(explode('<br>',wordwrap($string, 41, '<br>', false)), 0, 1));
													
													$usedPicture = print '<small><a href="/article.php?node=' .$recordTwo['id'].  '">'. $result . '</a></small>';
													if($result!=$string) 
													{ 
														print'...';
														if(($gallery[0]) > 1) echo ' /';	
													}
												
												echo '</div>';
											}
										?>
										
									</li>
									
							   <?php } ?>							   
						   </ul>
						<?php
							}
							else
							{
								echo('<p>Доступ закрыт, Вам необходимо <a href="/login.php">авторизоваться</a>.</p>');
							}
						?>
                    </div>
                </div>
            </div>
        </div>
        <?php include('includes/footer.php'); ?> 
    </div> 
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="js/confirm.js"></script>
</body>
</html>