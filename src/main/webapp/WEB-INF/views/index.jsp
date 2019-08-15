<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
		<title>BAYİLİK ÖN BAŞVURU FORMU</title>


		<style>
			* {
			  box-sizing: border-box;
			}
			
			input[type=text],input[type=date], input[type=number], input[type=email], input[type=tel]{
			  width: 100%;
			  padding: 12px;
			  border: 1px solid #ccc;
			  border-radius: 4px;
			  resize: vertical;
			}
		
			label {
			  padding: 12px 12px 12px 0;
			  display: inline-block;
			}
			
			button {
			  background-color: #555555;
			  color: white;
			  padding: 12px 20px;
			  border: none;
			  border-radius: 4px;
			  cursor: pointer;
			  float: center;
			  width: 250px;
			  position: absolute;
  			  top: 700px;
  			  right: center;
			}
			
			button:hover {
			  background-color: #555555;
			}
			
			.container {
			  border-radius: 5px;
			  background-color: #f2f2f2;
			  padding: 20px;
			}
			
			.col-25 {
			  float: left;
			  width: 25%;
			  margin-top: 6px;
			}
			
			.col-75 {
			  float: left;
			  width: 75%;
			  margin-top: 6px;
			}
			
			/* Clear floats after the columns */
			.row:after {
			  content: "";
			  display: table;
			  clear: both;
			}
			
			/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
			@media screen and (max-width: 600px) {
			  .col-25, .col-75, button {
			    width: 100%;
			    margin-top: 0;
			  }
			}
		</style>
	</head>
	
		<body>
			<h3 style="text-align:center">Bayilik Ön Başvuru Formu</h3>
			<div class="container">
			  <form action="action_page.php">
			  	<div class="row">
			  		<div class="col-25">
			  			<label for="name">İsim:</label>
			  		</div>
			  		<div class="col-75">
			    		<input type="text" id="name" name="name" placeholder="İsim.." required="required">
					</div>
				</div>
				<div class="row">
			  		<div class="col-25">
			    		<label for="surname">Soyisim:</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="text" id="surname" name="surname" placeholder="Soyisim.." required="required">
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			    		<label for="tcno">Tc Kimlik No:</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="number" id="tcno" name="tcno" placeholder="Tc Kimlik No.." maxlength="11" required="required">
					</div>
				</div>
				<div class="row">
			  		<div class="col-25">
						<label for="birthday">Doğum Tarihi:</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="date" name="birthday" placeholder="Doğum Tarihi" required="required">
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">		
			 			<label for="phone">Telefon:</label>
			 		</div>
			 		<div class="col-75">
			    		<input type="tel" id="telephone" name="phone" placeholder="Telefon.." required="required">
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			    		<label for="address">Adres:</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="text" id="address" name="address" placeholder="Adres.." required="required" >
			    	</div>
			    </div>
			     <div class="row">
			  		<div class="col-25">
			    		<label for="email">E-mail:</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="email" name="email" multiple placeholder="E-mail.." required="required">
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			    		<label for="question1">Perakende ticareti ile uğraştınız mı?</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="text" id="question1" name="question1" placeholder="Bir şeyler yazınız.." required="required" >
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			   			<label for="question2">Lokumcu Baba'yı tercih etmenizin sebebi nedir?</label>
			   		</div>
			   		<div class="col-75">
			    		<input type="text" id="question1" name="question2" placeholder="Bir şeyler yazınız.." required="required" >
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			    		<label for="question3">Hangi il/ilçe/semt için Lokumcu Baba işletmeciliği düşünüyorsunuz?</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="text" id="question1" name="question3" placeholder="Bir şeyler yazınız.." required="required" >
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			    		<label for="amount">Yatırım miktarınız nedir?</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="number" id="amount" name="amount" placeholder="Miktar.." required="required" >
			    	</div>
			    </div>
			    <div class="row">
			  		<div class="col-25">
			    		<label for="addition">Eklemek istedikleriniz:</label>
			    	</div>
			    	<div class="col-75">
			    		<input type="text" id="addition" name="addition" placeholder="Bir şeyler yazınız.." required="required" >
			   		</div>
			   	</div>
			   	<div class="row">
			   		<button class="btn btn-info" style="width: 50%" onclick="add()">Gönder</button>
			    	
			    </div>
			
			  </form>
		</div>
		<script src="asset/custom/add.js"> </script>
		
	</body>
</html>