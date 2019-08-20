package MyShop.Controller;


import MyShop.JDBCdatabase.OneWareInfoPrint;
import MyShop.JDBCdatabase.PrintContent;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class WebController {

    @RequestMapping(value= {"/", "home"})
    public String welcome() {
        return "homePage";
    }

    @RequestMapping("/testTemp")
    public String testTemp() {
        return "waresPage";
    }


    @RequestMapping(value = "/wareContent", method = RequestMethod.GET)
    public String wareContent(HttpServletRequest request, HttpServletResponse response) {
        String temp = request.getParameter("ware");
        PrintContent.PrintWares(temp);
        return "waresPage";

    }

    @RequestMapping(value = "/wareInfo", method = RequestMethod.GET)
    public String oneWareInfo(HttpServletRequest request, HttpServletResponse response) {
        String temp = request.getParameter("wareGroup");
        String temp2 = request.getParameter("wareID");
        OneWareInfoPrint.oneWareInfo(temp,temp2);
        return "oneWareInfoPage";
    }

    @RequestMapping("/basket")
    public String Basket() {
        return "basket";
    }

    @RequestMapping(value = "/loginin", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpServletResponse response) {
        String loginsss = request.getParameter("logn");
        String passwordsss = request.getParameter("pass");
        System.out.println(loginsss + " " + passwordsss);
        return "loginpage";
    }

    @RequestMapping("/login")
    public String loginFree() {
        return "loginPage";
    }

}
