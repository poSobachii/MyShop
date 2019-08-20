<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="MyShop.JDBCdatabase.OneWareInfoPrint"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Smart_Dog shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/Layers8.css">
     <script type="text/javascript" src="js/scripts2.js"></script>
</head>
<body>

    <div id="BoxOfGod">
            <h3> Рука Боженьки</h3>
            <form action = "testTemp"> <input type="submit" value="Check wares"></form>
            <button onclick="testJS()">JS workin ?</button>
            <button onclick="printBasket()">Basket Content</button>
            </div>

	<div id="TopBackgroundLayer">
	</div>

	<div id="topBox">

	<div id="TopLeftBox">
	<form action = "home">
            <input type="image"<img src="pics/logo/logoSmall.png" width="200" height="120" /></input>
            </form>
	</div>

	<div id="TopCenterBox">
    	<h3><font color="white"> Официальный магазин Smart Dog & </br>
        	Нафиг с Пляжу я тут Ляжу.</font></h3>
    	</div>


	<div id="TopRightBox">
	Rus/ENG
	<form action = "login">
                   <input type="submit" value="LOGIN">
                   </form>
	<form action = "basket">
                   <input type="submit" value="BASKET">
                   </form>
	</div>
	</div>


	<div id="centerWholeBox">
	<div id="CenterContentBox">
            <% out.print(OneWareInfoPrint.write()); %>



	</div>


    <div id="CenterLeftBox" method="get">
               <form action = "wareContent">
               <input type="hidden" name="ware" value="shirts">
               <input type="submit" value="SHIRTS 1">
               </form>

               <form action = "wareContent">
               <input type="hidden" name="ware" value="shirtsTwo">
               <input type="submit" value="SHIRTS 2">
               </form>

               <form action = "wareContent">
               <input type="hidden" name="ware" value="cups">
               <input type="submit" value="CUPS">
               </form>

               <form action = "wareContent">
               <input type="hidden" name="ware" value="balloons">
               <input type="submit" value="Baloons">
               </form>


    	</div>


	<div id="CenterRightBox">
	Our Contacts
	</br></br></br>
	 <button onclick="window.location.href = 'https://facebook.com';">FB click</button>

	</div>
	</div>

</body>
</html>