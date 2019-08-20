package MyShop.JDBCBasketPack;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BasketOrder {

    public static List<Order> orderList = new ArrayList<>();


    public static void addOrder(String wareType, String wareCode){
        Order tempo = new Order(wareType, wareCode);
        orderList.add(tempo);
        }


    public static void printJSBasket(){
        System.out.println("size is: " + orderList.size());
            int order = 1;
            for ( Order r : orderList ) {
            System.out.println("order No:" + order + " - " + r.getWareType()
                    + "," + r.getWareID());
            ++order;
            }

    }

    public static StringBuffer printBasket() {

        StringBuffer strbfr = new StringBuffer();
        strbfr.append("<h4>The size of your basket is: " + orderList.size() + "</h4></br>");

        for (Order r : orderList) {

            String wareGrp = r.getWareType();
            String wareId = r.getWareID();

            try (
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/smartdogshop", "root", "12345678");
                    Statement stmt = conn.createStatement();
            ) {
                String strSelect = "select * from " + wareGrp + " where id = \"" + wareId + "\"";
                ResultSet rset = stmt.executeQuery(strSelect);

                while(rset.next()){
                    String title = rset.getString("wareType");
                    double price = rset.getDouble("price");
                    int qty = rset.getInt("qty");

                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        } return strbfr;
    }
}
