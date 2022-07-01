<!-- Including the Spring MVC Form Tag Library, which allows for Data Binding,
	This happens by getting the forms' data and binding it to a Model's Attribute
	(the Attribute of a Model is simply a Java Object)
		Take a good look at the (prefix="form"), this is very simillar to how
		XML Namespaces and XML Schema Locations work. 
		In order to use the Spring MVC Form Tag Library's features,
		we have to write the prefix each time to our tags.-->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!-- Including the JSTL Library Tag (requires "jstl-1.2.jar"), 
	 This will allow us to perform loops and if statements in the ".jsp" file 
	 	Take a good look at the (prefix="c"), this is very simillar to how
		XML Namespaces and XML Schema Locations work. 
		In order to use the JSTL Tag Library's features,
		we have to write the prefix each time to our tags.-->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- When a user opens this page, he will see this written on his web browser's Tab  -->
<title>Video Game Survey</title>
</head>
<body>
	
	<h2>Video Game Survey</h2>
	
	<p>1. Which of the following games you have played?</p>
	<!-- Creating a Spring MVC Form -->
		<!-- "action" attribute - specifies where to send the form-data, when a form is submitted. -->
		<!-- "modelAttribute" - allows us to get the submitted form data and bind it to a specific Object (Data Binding) -->
	<form:form action="video-game-survey-results-page" modelAttribute="videoGameSurveyObject">
		<!-- Creating Spring MVC Form Check-Boxes -->
			<!-- "form:checkboxes" vs "form:checkbox" tag
				"form:checkboxes" (allows us to store multiple check-box items at once, by reading Object from Array/Collection/Map.
				"form:checkbox" (allows us to store a single check-box item, usually by using a literal (example: value="God of War 4")-->
			<!-- "items" attribute - here we give the Object's field, which has to be of type Array/Collection/Map.
				  After that, the Objects from this Array/Collection/Map will be displayed as check-boxes -->
			<!-- "path" attribute - here we specify, to which field of the Object, we are going to bind the submitted check-boxes form data -->
			<!-- "delimiter" attribute - makes every Object(check-box item) appear on a New Line -->
		<form:checkboxes items="${videoGameSurveyObject.gamesList}" path="gamesPlayed" delimiter="<br/>"/>
		
		
		<!-- 2 New Lines -->
		<br/>
		<br/>
		
		<p>2. Which is your preferred gaming platform?</p>
		<!-- Creating Spring MVC Form Radio-Buttons -->
			<!-- "form:radiobuttons" vs "form:radiobutton" tag
				"form:radiobuttons" (allows us to store multiple radio items at once, by reading Object from Array/Collection/Map.
				"form:radiobutton" (allows us to store a single radio item, usually by using a literal (example: value="God of War 4")-->
			<!-- "items" attribute - here we give the Object's field, which has to be of type Array/Collection/Map.
				  After that, the Objects from this Array/Collection/Map will be displayed as radio buttons -->
			<!-- "path" attribute - here we specify, to which field of the Object, we are going to bind the submitted radio button form data -->
			<!-- "delimiter" attribute - makes every Object(radio item) appear on a New Line -->
		<form:radiobuttons items="${videoGameSurveyObject.gamesPlatform}" path="preferredGamesPlatform" delimiter="<br/>" />
		
		<!-- 2 New Lines -->
		<br/>
		<br/>
		
		<p>3. What is the first video game you have ever played?</p>
		<!-- Creating Spring MVC Form Text Input Field -->
			<!-- "path" attribute - here we specify, to which field of the Object, we are going to bind the submitted radio button form data -->
		<form:input path="firstVideoGameEverPlayed" />  
		
		<!-- 2 New Lines -->
		<br/>
		<br/>
		
		<!-- Creating a Submit Button -->
			<!-- Here we are using regular HTML tags to create the form's submit button -->
			<!-- "type" attribute - specifying the type of input, in our case a submit button for our form -->
			<!-- "value" attribute - what is going to be written on the button -->
		<input type="submit" value="Submit Survey"/>
		
	</form:form>

</body>
</html>