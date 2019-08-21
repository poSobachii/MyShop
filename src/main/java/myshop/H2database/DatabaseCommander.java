package myshop.H2database;

import myshop.DatabaseDAO.DatabaseDAO;
import myshop.Repository.BalloonRepository;
import myshop.Repository.CupsRepository;
import myshop.Repository.ShirtRepository;
import myshop.Repository.ShirtV2Repository;
import myshop.WareTemplates.BasicWare;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

//@Configurable
@Service
public class DatabaseCommander implements DatabaseDAO {

    List<?> currentWare = new ArrayList<>();

    @Autowired
    ShirtRepository shirtRepository;
    @Autowired
    ShirtV2Repository shirtV2Repository;
    @Autowired
    CupsRepository cupsRepository;
    @Autowired
    BalloonRepository balloonRepository;


    @Override
    public void fetchWare(String insert) {
        long temp = 1501;
        System.out.println("ballon=" + balloonRepository.findOne(temp));

    }

    @Override
    public List<?> getAllWares(String wareType) {
        switch (wareType) {
            case "shirts":
                return shirtRepository.findAll();
            case "shirtsTwo":
                return shirtV2Repository.findAll();
            case "cups":
                return cupsRepository.findAll();
            case "balloons":
                return balloonRepository.findAll();
            default:
                return null;
        }
    }

    @Override
    public BasicWare getOneItem(String wareType, Long id) {
        switch (wareType) {
            case "TShirts":
                return shirtRepository.findOne(id);
            case "TShirtsv2":
                return shirtV2Repository.findOne(id);
            case "Cups":
                return cupsRepository.findOne(id);
            case "Balloons":
                return balloonRepository.findOne(id);
            default:
                return null;
        }
    }

}
