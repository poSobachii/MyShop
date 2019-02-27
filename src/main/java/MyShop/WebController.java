package MyShop;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class WebController {

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        return "homepage";
    }

    @RequestMapping("/home")
    public String homepage(Map<String, Object> model) {
        return "homepage";
    }

    @RequestMapping("/login")
    public String login(Map<String, Object> model) {
        return "homepage";
    }

    @RequestMapping("/basket")
    public String basket(Map<String, Object> model) {
        return "homepage";
    }

    @RequestMapping(value = "/wareContent", method = RequestMethod.GET)
    public String wareContent(HttpServletRequest request, HttpServletResponse response){
        String temp = request.getParameter("ware");
        PrintContent.VarIn(temp);
        return "waresPage";
    }


}
