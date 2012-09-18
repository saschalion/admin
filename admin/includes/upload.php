<h2>Загрузка файлов на сервер</h2>
<?php	
	if(is_uploaded_file($_FILES["file"]["tmp_name"])) {
	
		$fileFolder = '/uploads/';
	
		$fileName = $_FILES["file"]["name"];
		
		$fileSize = $_FILES["file"]["size"];
	
		if(get_mime_type($fileName)) {
			if($fileSize > 1024*3*1024) {
				$fileMessage = "<span style='color: red;'>Размер файла превышает три мегабайта</span>";	
			} else {

				$newFileName = str_replace(' ', '_', $fileName);
				
				move_uploaded_file($_FILES["file"]["tmp_name"], "..".$fileFolder.$newFileName);
				
				$sql = mysql_query ("INSERT INTO files (url, user_id) values ('".$fileFolder.$newFileName."', '".$_SESSION['user_id']."')");
				
				$fileMessage = "<span style='color: green;'>Файл успешно загружен!</span><br/> Скопируйте ссылку файла в текстовый редактор: " . "<strong>/uploads/" . $newFileName . "</strong>";
				
				$preview = "
				<h3>Предварительный просмотр изображения:</h3> <img class='preview-img' src='/uploads/" . 
				
				$newFileName . "' alt=''/><p><small><strong>Размер:</strong> " . round($fileSize/1024, 3) .  
				" Кб</small></p>
				<h3>Загрузить еще файл</h3>";
			}
		}
		else { 
			$fileMessage = "<span style='color: red;'>Доступные расширения: jpeg, jpg, png, gif.</span>"; 
		}
	}
?>
<div class="uploading">
	<div class="upload-file-box">
		<form action="" method="post" class="order-form" id="upload-file" enctype="multipart/form-data">
			<p class="upload-messages">
				<?php echo $fileMessage; ?>
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