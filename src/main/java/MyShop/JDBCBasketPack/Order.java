package MyShop.JDBCBasketPack;

public class Order {

    private String wareType;
    private String wareID;

    public Order(String wareGrp, String wareID) {
        this.wareType = wareGrp;
        this.wareID = wareID;
    }

    public String getWareType() {
        return wareType;
    }

    public void setWareType(String wareType) {
        this.wareType = wareType;
    }

    public String getWareID() {
        return wareID;
    }

    public void setWareID(String wareID) {
        this.wareID = wareID;
    }
}
