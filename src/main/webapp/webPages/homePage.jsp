<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Smart_Dog shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/Layers13.css">
     <link rel="stylesheet" href="css/Buttons5.css">
     <script type="text/javascript" src="js/scripts3.js"></script>
</head>
<body>

    <div id="BoxOfGod">
            <h4> Рука Боженьки</h4>
            <form action = "testTemp"> <input type="submit" value="Check wares"></form>
            <button onclick="testJS()">JS workin ?</button>
            <button onclick="printBasket()">Basket Content</button>
            </div>

	<div class="TopBackgroundLayer">
	</div>

	<div class="topBox">

	<div class="TopLeftBox">
	<form action = "home">
            <input type="image"<img src="pics/Logo/logoSmall.png" width="200" height="120" /></input>
            </form>
	</div>

	<div class="TopCenterBox">
    	<h3><font color="white"> Официальный магазин </font></h3>
        	<h5><font color="white"> Rus/ENG </font></h5>
    	</div>


	<div class="TopRightBox">
	Our Contacts
    	</br></br></br>
    	 <button onclick="window.location.href = 'http://localhost:8080/home';">FB click</button>


	</div>
	</div>


	<div class="centerWholeBox">
	<div class="contentLoginInstance">
            <img src="pics/Logo/logoSmall.png" width="200" height="200" /> <p> Some text1 </p></br>

            <p> Some text2 </p></br>
            <p> Some text3 </p></br>


	</div>


    <div class="CenterLeftBox" method="get">

               <form action = "wareContent">
               <input type="hidden" name="ware" value="shirts">
               <input type="submit" class="menu_choice1" value=" "><!--
               --><input type="submit" class="menu_choice" value="Майки #1">
               </form>

               <form action = "wareContent">
               <input type="hidden" name="ware" value="shirtsTwo">
               <input type="submit" class="menu_choice2" value=" "><!--
               --><input type="submit" class="menu_choice" value="Майки #2">
               </form>

               <form action = "wareContent" >
               <input type="hidden" name="ware" value="cups">
               <input type="submit" class="menu_choice3" value=" "><!--
               --><input type="submit" class="menu_choice" value="Кружки">
               </form>

               <form action = "wareContent">
               <input type="hidden" name="ware" value="balloons">
               <input type="submit" class="menu_choice4" value=" "><!--
               --><input type="submit" class="menu_choice" value="Шарики">
               </form>




    	</div>


	<div class="CenterRightBox">
    	<form action = "basket">
                       <input type="submit" value="BASKET">
                       </form>

	</div>
	</div>

</body>
</html>