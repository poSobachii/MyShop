package myshop.DatabaseDAO;

import myshop.WareTemplates.BasicWare;

import java.util.List;

public interface DatabaseDAO {
    void fetchWare(String insert);
    List<?> getAllWares(String wareType);
    BasicWare getOneItem(String wareType, Long id);
}
