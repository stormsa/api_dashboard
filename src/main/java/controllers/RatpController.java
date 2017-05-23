package main.java.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by saziri on 02/05/2017.
 */
@Controller
@RequestMapping("/ratp")
public class RatpController {
    @RequestMapping(method = RequestMethod.GET)
    public String ratp(Model model){
        return "transport/ratp";
    }

    @RequestMapping(value = "/itinerary", method= RequestMethod.GET)
    public String itinerary(HttpServletRequest request, HttpServletResponse response){
        return "transport/itinerary";
    }
    @RequestMapping(value = "/traffic", method= RequestMethod.GET)
    public String trafic(HttpServletRequest request, HttpServletResponse response){
        return "transport/trafic";
    }
    @RequestMapping("/toggle")
    public void toggle(HttpServletRequest request, HttpServletResponse response){
        boolean publish = Boolean.parseBoolean(request.getParameter("enabled"));
        response.setStatus(HttpServletResponse.SC_ACCEPTED);
    }
}
