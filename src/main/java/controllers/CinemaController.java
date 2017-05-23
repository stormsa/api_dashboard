package main.java.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by saziri on 18/05/2017.
 */
@Controller
@RequestMapping("/cinema")
public class CinemaController {
    @RequestMapping(method= RequestMethod.GET)
    public String cinema(Model model){
        return "cinema";
    }
}
