package supinfo.dashboard.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by saziri on 29/03/2017.
 */
@Controller
@RequestMapping({"/map", "/map"})
public class MapController {
        @RequestMapping(method= RequestMethod.GET)
        public String home(Model model){
            return "map";
        }
}


