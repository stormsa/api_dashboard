package main.java.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.DefaultPropertiesPersister;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import main.java.dao.IUserDao;
import main.java.entities.UserAccount;
import main.java.forms.LoginForm;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.Date;
import java.util.Properties;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    IUserDao userBdd;
    UserAccount user;
    public void setUserDAO(IUserDao userDAO) {
        this.userBdd = userDAO;
    }
    @RequestMapping(value="/add", method=RequestMethod.GET)
    public ModelAndView add(){
        return new ModelAndView("userForm", "userAccount", new UserAccount());
    }

    @RequestMapping(value="/add", method=RequestMethod.POST)
    public String saveUser(@ModelAttribute("userAccount")UserAccount user,
                           BindingResult result, ModelMap model, HttpServletRequest request) throws Exception {

        user.setPassword(LoginForm.getEncryptedPassword(user.getPassword()));
        Date creationDate = new Date();
        user.setCreationDate(creationDate);
        userBdd.saveUser(user);
        // Create a loginform and check in bdd if users exists
        user = userBdd.checkCredentials(user.getEmail(), user.getPassword());
        LoginForm loginForm = new LoginForm();
        loginForm.setPassword(user.getPassword());
        loginForm.setUsername(user.getEmail());
        // Create parameters for user in a directory
        //createParameters();
        request.getSession().setAttribute("LOGGEDIN_USER", loginForm);
        request.getSession().setAttribute("USER_INFORMATIONS", user);
        return "redirect:/index";
    }
    private void createParameters(){
        String userHome = System.getProperty("user.home");
        // Create folder into user.home
        String path = userHome + "/dashboardApi";
        String directoryName = user.getEmail();
        String fileName = "dashboard_user.properties";

        // Check if user folder exists
        File directory = new File(path,directoryName);
        if (! directory.exists()){
            directory.mkdir();
            // If you require it to make the entire directory path including parents,
            // use directory.mkdirs(); here instead.
        }
        // create and set properties into properties object
        Properties props = new Properties();
        props.setProperty("color", "blue");
        props.setProperty("ratp", "true");
        props.setProperty("news", "true");
        File file = new File(directoryName + "/" + fileName);
        // get or create the file
        try {
            OutputStream out = new FileOutputStream( file );
            // write into it
            DefaultPropertiesPersister p = new DefaultPropertiesPersister();
            try {
                p.store(props, out, "Parameters for user");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
    private void getParamters(){
        String userHome = System.getProperty("user.home");
        // Create folder into user.home
        String path = userHome + "/dashboardApi";
        String directoryName = user.getEmail();
        String full_path = path + "/"+directoryName;
        String fileName = "dashboard_user.properties";
        File file = new File(full_path + "/" + fileName);

        Properties prop = new Properties();
        InputStream input = null;

        try {

            input = new FileInputStream(file);

            // load a properties file
            prop.load(input);

            // get the property value and print it out
            System.out.println(prop.getProperty("color"));
            System.out.println(prop.getProperty("ratp"));
            System.out.println(prop.getProperty("news"));

        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
