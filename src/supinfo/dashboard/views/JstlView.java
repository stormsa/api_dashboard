package supinfo.dashboard.views;

/**
 * Created by saziri on 14/03/2016.
 */

import org.springframework.web.servlet.view.InternalResourceView;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class JstlView extends InternalResourceView {

    @Override
    protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {

        // Expose the model object as request attributes.
        exposeModelAsRequestAttributes(model,request);

// Determine the path for the request dispatcher.
        String dispatcherPath = prepareForRendering(request, response);

// set original view being asked for as a request parameter
        // Get o only the page so from the end of Web-Inf/views (15)
        request.setAttribute("partial", dispatcherPath.substring(15, dispatcherPath.length()));

// force everything to be template.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/views/template.jsp");
        requestDispatcher.forward(request, response);

    }

}