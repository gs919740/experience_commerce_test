<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Upload Your empployee data</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">


</head>
<body>
    <div class="container">
		<div class="row">
			<div class="col-md-4">
				<div id="sucess" class="success"></div>
				<div id="error" ></div>
			</div>	
	        <div class="col-sm-4">
	        <h4>Upload Your empployee data</h4>
	            <form class="form-horizontal" id="submit">
	                <div class="form-group">
	                    <input type="file" name="employeefile">
	                </div>
	 
	                <div class="form-group">
	                    <button class="btn btn-success" id="btn_upload" type="submit">Upload</button>
	                </div>
	            </form>   
	        </div>
		</div>

    </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
 
        $('#submit').submit(function(e){
            e.preventDefault(); 
                 $.ajax({
                     url:'<?php echo base_url();?>Employee/importdata',
                     type:"post",
                     data:new FormData(this),
                     processData:false,
                     contentType:false,
                     cache:false,
                     async:false,
                      success: function(data){
						var newdata = JSON.parse(data);
						$('#sucess').html(newdata.msg);
						$('#error').html(newdata.error);
                   }
                 });
            });
         
 
    });
     
</script>
</body>
</html>