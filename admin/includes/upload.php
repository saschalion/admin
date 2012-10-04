<h2>Загрузка файлов на сервер</h2>
<?php
	upload();
?>
<div class="uploading">
	<div class="upload-file-box">
		<form action="" method="post" class="order-form" id="upload-file" enctype="multipart/form-data">
			<p class="upload-messages">
				<?php echo $file_message; ?>
				<?php echo $preview; ?>	
			</p>
			<div class="label-box">
				<input type="file" name="file" id="file"/>										
			</div>
			<p class="submit-box">
				<input type="submit" name="sendFile" value="Загрузить"/>
			</p>							
		</form>
	</div>
	<div class="loading" style="display: none;">
		<img src="images/ajax-loader.gif" alt=""/>
	</div>
</div>



