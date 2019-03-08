package MyShop.JDBCdatabase;

import org.springframework.beans.factory.annotation.Value;

import java.sql.*;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class PrintContent {

    static String temp;

    public static void PrintWares( String content){

        temp = content;
    }

    public static StringBuffer write( ) {
        StringBuffer strbuff = new StringBuffer();

            try (
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/smartdogshop", "root", "12345");
                    Statement stmt = conn.createStatement();
            ) {
                String strSelect = "select id, wareType, price from " + temp;
//                System.out.println("SQL query is: " + strSelect);
                ResultSet rset = stmt.executeQuery(strSelect);

                while(rset.next()) {
                    String id = rset.getString("id");
                    String title = rset.getString("wareType");
                    double price = rset.getDouble("price");
//                    int    qty   = rset.getInt("qty");
                    strbuff.append
                            ("<div class=\"col-sm-6\" style=\"background-color:transparent;\">" +
                                    "<img src=\"pics/"+ temp + "/" + id + ".png\"" +
                                    " width=\"250\" height=\"225\" alt=\"there is no picture :(\" />" +
                                    "</br>" + title +
                                    "</br> Cost: " + price + " EUR." +
//                                  "</br> Quantity available: " + qty +
                                    "</br> The code is: " + id +
                                    "</br><form name = \"addToBasket\">\n" +
                                    "<input type=\"hidden\" name=\"basketValue\" value=\"" + id + "\">\n" +
                                    "<input type=\"button\" value=\"Add to basket\"" +
                                    " onclick=\"return add_to_basket(" +
                                    "\'" + temp + "\',\'" + title + "\'," + id +
                                    ")\"</form></div>");

                }
//                System.out.println(strbuff);

            } catch(SQLException ex) {
                ex.printStackTrace();
            }
        return strbuff;
    }

    public static void moves(){

        System.out.println("printing smthin");

    }
}
