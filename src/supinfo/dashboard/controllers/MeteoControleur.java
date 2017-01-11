package supinfo.dashboard.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Vinh on 11/01/2017.
 */
@Controller
@RequestMapping({"/meteo", "/meteo", "/meteo"})
public class MeteoControleur {

    @RequestMapping(method= RequestMethod.GET)
    public String home(Model model){
        return "meteo";
    }
}
