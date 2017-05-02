package supinfo.dashboard.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Vinh on 11/01/2017.
 */
@Controller
@RequestMapping({"/meteo"})
public class MeteoController {

    @RequestMapping(method= RequestMethod.GET)
    public String meteo(Model model){
        return "meteo";
    }
}
