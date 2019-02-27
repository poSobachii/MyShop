<%@ page import="MyShop.PrintContent"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>MyShop online web-store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/layers.css">
</head>
<body>

	<div id="backgroundTopLayerBox">
	</div>
	<div id="trickyTopBox">
	<div id="topBox">

	<div id="leftTopBox">
	<form action = "home">
            <input type="submit" value=" # LOGO">
            </form>
	</div>

	<div id="rightTopBox">
    	<form action = "login">
        <input type="submit" value="LOGIN">
        </form> </p>
    	<form action = "basket">
        <input type="submit" value="BASKET">
        </form>
    	</div>

	<div id="centerTopBox">
	Official nafig web store
	</div>
	</div>
	</div>

	<div id="trickyCenterBox">
	<div id="centerWholeBox">

	<div id="contentCenterBox">
	<div class="container-fluid">
               <div class="row" text-align="right">
               <% out.print(PrintContent.write());  %>
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
	Our Contancts
	</br></br></br>
	Advertisings

	</div>
	</div>
	</div>

</body>
</html>