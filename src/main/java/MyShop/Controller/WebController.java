package MyShop.Controller;


import MyShop.JDBCdatabase.PrintContent;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class WebController {

    @RequestMapping("/")
    public String welcome() {
        return "homepage";
    }

    @RequestMapping("/home")
    public String homepage() {
        return "homepage";
    }

    @RequestMapping("/testTemp")
    public String testTemp() {
        return "warespage";
    }

    @RequestMapping("/login")
    public String loginFree() {
        return "loginpage";
    }

    @RequestMapping(value = "/loginin", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpServletResponse response) {
        String loginsss = request.getParameter("logn");
        String passwordsss = request.getParameter("pass");
        System.out.println(loginsss + " " + passwordsss);
        return "loginpage";
    }

    @RequestMapping("/basket")
    public String Basket() {
        return "homepage";
    }

    @PostMapping("/addBasketResponse.jsp")
    public void Hujasket() {
        System.out.println("response injected");;
    }

    @RequestMapping(value = "/wareContent", method = RequestMethod.GET)
    public String wareContent(HttpServletRequest request, HttpServletResponse response) {
        String temp = request.getParameter("ware");
        PrintContent.PrintWares(temp);
        return "warespage";
    }


}
