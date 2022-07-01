package my_package;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// @Controller Annotation, tells Spring this is a Controller Class
@Controller
public class HomeController {
	
	// @RequestMapping Annotation, maps the HTTP(URL) request
	// to the given handler method.
		// Spring will actually take the String value that is returned from this method
		// and use the InternalResourceViewResolver, to add the specified by us
		// prefix and suffix. After this is done the InternalResourceViewResolver,
		// will know the full file path of the View Page. 
		// (Example: "home-page" -> "/WEB-INF/jsp/home-page.jsp")
		// Now it can give the file path to the Dispatcher Servlet, 
		// after which the Dispatcher Servlet will get the View Page and
		// return it as a HTTP Response to the Client, who made the HTTP(URL) Request.
	@RequestMapping("/")
	public String getHomePage() {
		return "home-page";
	}
	
}
