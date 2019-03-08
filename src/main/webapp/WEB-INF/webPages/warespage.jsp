<%@ page import="MyShop.JDBCdatabase.PrintContent"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>MyShop online web-store</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/SmartShopLayers.css">
    <script type="text/javascript" src="js/scripts2.js"></script>
</head>
<body>

    <div id="BoxOfGod">
        Рука Боженьки
        <form action = "testTemp"> <input type="submit" value="Check wares">
        </form>
        <button onclick="testJS()">JS workin ?</button>
        </div>

	<div id="backgroundTopLayerBox">
	</div>

	<div id="topBox">

	<div id="leftTopBox">
	<form action = "home">
            <input type="submit" value=" # LOGO">
            </form>

	</div>

	<div id="rightTopBox">
	Rus/ENG
    	<form action = "login">
        <input type="submit" value="LOGIN">
        </form> </p>
    	<form action = "basket">
        <input type="submit" value="BASKET">
        </form>
    	</div>

	<div id="centerTopBox">

	</div>

	</div>

	<div id="centerWholeBox">

	<div id="contentCenterBox">
	<div class="container-fluid">
               <div class="row" text-align="right">
               <%
               out.print(PrintContent.write());
                %>
               </div>
        </div>
	</div>

	<div id="leftCenterBox" method="get">
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
               <input type="hidden" name="ware" value="ballons">
               <input type="submit" value="Baloons">
               </form>

    	</div>


	<div id="rightCenterBox">
	Our Contacts
	</br></br></br>
	fb link
    </div>

	</div>

</body>
</html>