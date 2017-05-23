package main.java.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by saziri on 13/07/2016.
 * Manage agencies
 */
@Controller
@RequestMapping({"/index", "/"})
public class HomeController {
    // Return index view
    @RequestMapping(method= RequestMethod.GET)
    public String home(Model model){
        return "index";
    }
}
