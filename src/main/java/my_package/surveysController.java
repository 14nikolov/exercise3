package my_package;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller Annotation, tells Spring this is a Controller Class
@Controller
public class surveysController {
	
	// @RequestMapping Annotation, maps the HTTP(URL) request
	// to the given handler method.
		// Spring will actually take the String value that is returned from this method
		// and use the InternalResourceViewResolver, to add the specified by us
		// prefix and suffix. After this is done the InternalResourceViewResolver,
		// will know the full file path of the View Page. 
		// (Example: "surveys" -> "/WEB-INF/jsp/surveys.jsp")
		// Now it can give the file path to the Dispatcher Servlet, 
		// after which the Dispatcher Servlet will get the View Page and
		// return it as a HTTP Response to the Client, who made the HTTP(URL) Request.
	@RequestMapping("surveys")
	public String getSurveysPage() {
		return "surveys-page";
	}
	
	@RequestMapping("surveys/video-game-survey")
	// Adding a Model, which will be passed to the View Page "video-game-survey-page"
	public String getVideoGameSurveyPage(Model model) {
		// Adding an Object to the Model. 
		// That Object will be carried by the model, to the View Page "video-game-survey-page". 
		// After that we can work with the Model's Object, inside the View Page.
		model.addAttribute("videoGameSurveyObject", new VideoGameSurveyObject());
		return "video-game-survey-page";
	}
	
	
	// Checking whether or not, the Model Attribute's Validation Requirements are met
		// The Validation Requirements are given in the Object's class, via Validation Annotations 
		// for example: @NotNull, @NotEmpty, @NotBlank, @Size and etc.
	// @Valid tells Spring to check whether the Validation Requirements of those Annotations are met
		//
	// BindingResult is a Spring Object, that holds the results of the Validation, 
		// the Data Binding and it also contains errors that may have occurred.
	// In our case we will use BindingResult's ".hasErrors()" method, 
	// to see if all of our Validation Requirements are met.
		// If there are errors during the Validation, it will return "true",
		// if there are no errors it will return "false" 
	@RequestMapping("surveys/video-game-survey/video-game-survey-results")
	public String getVideoGameSurveyResultsPage
	(@Valid @ModelAttribute("videoGameSurveyObject") VideoGameSurveyObject theVideoGameSurveyObject,
			BindingResult theBindingResult) 
	{
		if(theBindingResult.hasErrors()) {
			return "video-game-survey-page";
		}else {
			return "video-game-survey-results-page";
		}
		
	}
}
