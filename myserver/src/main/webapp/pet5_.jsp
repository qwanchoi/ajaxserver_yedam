<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Pete's Pet Shop</title>

    <!-- Bootstrap -->
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-8 col-sm-push-2">
          <h1 class="text-center">Pete's Pet Shop</h1>
          <hr/>
          <br/>
        </div>
      </div>

      <div id="petsRow" class="row">
        <!-- PETS LOAD HERE -->
      </div>
    </div>

    <div id="petTemplate" style="display: none;">
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="panel panel-default panel-pet">
          <div class="panel-heading">
            <h3 class="panel-title">Scrappy</h3>
          </div>
          <div class="panel-body">
            <img alt="140x140" data-src="holder.js/140x140" class="img-rounded img-center" style="width: 100%;" src="https://animalso.com/wp-content/uploads/2017/01/Golden-Retriever_6.jpg" data-holder-rendered="true">
            <br/><br/>
            <strong>Breed</strong>: <span class="pet-breed">Golden Retriever</span><br/>
            <strong>Age</strong>: <span class="pet-age">3</span><br/>
            <strong>Location</strong>: <span class="pet-location">Warren, MI</span><br/><br/>
            <button class="btn btn-primary btn-adopt" type="button" data-id="0">Adopt</button>
          </div>
        </div>
      </div>
    </div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   <!--  <script src="resources/js/app.js"></script> -->
   <script>
   $(function() {
	   petList();
	   petAdopt();
   });
   
   function petAdopt(){
	   // 버튼을 클릭하면 분양테이블에 등록
	   $('#petsRow').on('click', '.btn', function(e) {
		   //console.log($(this).data('id'));
		   let id = $(this).data('id');
		   let price = prompt('가격입력');
		   $.ajax({
			   url: 'adoptInsert',
			   method: 'POST',
			   type: 'json',
			   data: {id, price}
		   }).done(function(r) {
			   petList();
		   });
	   })
	   
	   // 버튼 비활성화
   }
   
   function petList() {
	   $.ajax({
		   url: 'petSelect',
		   method: 'GET',
		   dataType: 'json'
	   }).done(function(list){
		   let temp = $('#petTemplate');
		   $('#petsRow').html('');
		  	for( pet of list ) {
		  		temp.find('.panel-title').html(pet.name);
		  		temp.find('.pet-breed').html(pet.bread);
		  		temp.find('.pet-age').html(pet.age);
		  		temp.find('.pet-location').html(pet.location);
		  		temp.find('img').attr('src', pet.picture);
		  		//temp.find('.btn').data('id', pet.id);
		  		temp.find('.btn').attr('data-id', pet.id);
		  		// price 가 0보다 크면 btn 비활성화
		  		if(pet.price > 0) {
		  			temp.find('.btn').prop('disabled', true);
		  		} else {
		  			temp.find('.btn').prop('disabled', false);
		  		}
		  		$('#petsRow').append(temp.html());
		  	}
	   })
   }
   </script>
  </body>
</html>
