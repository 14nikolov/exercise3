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
<title>Results of Video Game Survey</title>
</head>
<body>

	<h3>Here are the results of your survey:</h3>
	1. Out of these games:
	
	<!-- Using JSTL's Tag Library "forEach" Loop -->
	<c:forEach var="game" items="${videoGameSurveyObject.gamesList}">
		<ul>
			<li>
				<!-- Using JSTL's Tag Library "c:out"
				The "c:out" tag displays the result of an expression  -->
				<c:out value="${game}" />
			</li>
		</ul>
	</c:forEach>
	
	You have played:
	<!-- New Line -->
	<br/>
	
	<!-- Using JSTL's Tag Library forEach Loop -->
	<c:forEach var="gamesPlayed" items="${videoGameSurveyObject.gamesPlayed}">
		<ul>
	 		<li>
	 			<b><c:out value="${gamesPlayed}"/></b>
	 		</li>
	 	</ul>
	</c:forEach>
	<!-- New Line -->

	2. Your preferred gaming platform is: <b>${videoGameSurveyObject.preferredGamesPlatform}</b>
	<!-- 2 New Lines -->
	<br/>
	<br/>
	
	3. The first video game you have ever played is: <b>${videoGameSurveyObject.firstVideoGameEverPlayed}</b>
	
</body>
</html>