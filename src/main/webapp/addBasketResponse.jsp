<%
String name=(String)request.getParameter("param1");
String name2=(String)request.getParameter("param2");
String name3=(String)request.getParameter("param3");
out.println(name2 + " Added to the Basket");
out.println(name2 + " Добавлена в корзину");
System.out.println(name);
System.out.println(name2);
System.out.println(name3);
%>