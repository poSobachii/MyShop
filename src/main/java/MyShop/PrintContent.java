package MyShop;

import java.sql.*;
import java.util.concurrent.TimeUnit;

public class PrintContent {

    static String temp;

    public static void VarIn( String content){
        temp = content;
    }
    public static StringBuffer write( ) {
        StringBuffer strbuff = new StringBuffer();

            try (
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/smartdogshop", "root", "12345");
                    Statement stmt = conn.createStatement();
            ) {
                String strSelect = "select id, wareType, price, qty from " + temp;
                ResultSet rset = stmt.executeQuery(strSelect);

                int rowCount = 0;
                while(rset.next()) {
                    String uniqueCode = rset.getString("id");
                    String title = rset.getString("wareType");
                    double price = rset.getDouble("price");
                    int    qty   = rset.getInt("qty");
                    strbuff.append
                            ("<div class=\"col-sm-6\" style=\"background-color:transparent;\">"
                            + title + "</br>"
                            + price + "</br> Quantity available: "
                            + qty + "</br> The code is: "
                                    + uniqueCode + "</br></br></div>");
                    ++rowCount;
                }

            } catch(SQLException ex) {
                ex.printStackTrace();
            }

        return strbuff;
    }
}
