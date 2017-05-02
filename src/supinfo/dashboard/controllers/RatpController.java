package supinfo.dashboard.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by saziri on 02/05/2017.
 */
@Controller
@RequestMapping("/ratp")
public class RatpController {
    @RequestMapping(method= RequestMethod.GET)
    public String ratp(Model model){
        return "ratp";
    }
}
