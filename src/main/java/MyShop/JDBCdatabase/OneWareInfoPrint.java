package MyShop.JDBCdatabase;

import java.sql.*;

public class OneWareInfoPrint {

    static String wareGrp;
    static String wareId;

    public static void oneWareInfo(String wareGroup, String wareID){

        wareGrp = wareGroup;
        wareId = wareID;

    }

    public static StringBuffer write(){

        StringBuffer strbuff = new StringBuffer();
        try (
                Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/smartdogshop", "root", "12345");
                Statement stmt = conn.createStatement();
        ) {
            String strSelect = "select * from " + wareGrp + " where id = \"" + wareId + "\"";
//            System.out.println("SQL query for solo ware is: " + strSelect);
            ResultSet rset = stmt.executeQuery(strSelect);

            while(rset.next()) {
                String title = rset.getString("wareType");
                double price = rset.getDouble("price");
                int    qty   = rset.getInt("qty");
                String info = rset.getString("info");

                strbuff.append("results are: </br>" +
                        title + "</br>" +
                        price + "</br>" +
                        qty + "</br>" +
                        info);

            }

        }catch(SQLException ex) {
            ex.printStackTrace();
        }
        return strbuff;
    }
}
