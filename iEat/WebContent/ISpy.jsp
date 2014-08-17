<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		  <title>Search for food | iEat</title>
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <meta name="apple-mobile-web-app-capable" content="yes">
		  <meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		  <link href="css/codiqa.ext.min.css" rel="stylesheet">
		  <link href="css/jquery.mobile.theme-1.3.1.min.css" rel="stylesheet">
		  <link href="css/jquery-mobile.css" rel="stylesheet">
		  <link href="css/jquery.mobile.structure-1.3.1.min.css" rel="stylesheet">
		
		  <script src="js/jquery-1.9.1.min.js"></script>
		  <script src="js/jquery.mobile-1.3.1.min.js"></script>
		  <script src="js/codiqa.ext.min.js"></script>
		  <script src="js/ieat.js"></script>
		</head>
		<body>
		  <div data-role="page" data-control-title="Search for food" id="page4">
		      <div data-theme="a" style="width: 50px; height: 50px" data-role="header">
		
		          <h1>
		              ISpy
		          </h1>
		          <div style="display: inline text-align:center" data-controltype="image">
		              <img style="width: 50px; height: 50px" src="img/spy.jpg"/>
		          </div>
		      </div>
		      
				<form method="post" action=<%= response.encodeURL(request.getContextPath()+"/ISpy?action=FindRecipe")  %> 
		         <!-- input type="hidden" name="action" value="FindRecipe">  -->
		         
		          <!--  div data-role="fieldcontain" data-controltype="searchinput"-->
		              <input type= "text" name="recipe" class="form-control" />
		          <!--/div>  -->
		          <input type= "submit" value="search" />
		          <h3>
		              Results
		          </h3>
		          <p class="login-error"><%=request.getAttribute("message")%>  </p></a>
		     
	
					<!--table class="images">  
					<c:forEach items="${recipes}" var="element"> 
					  <tr>
					    <td>${element.name}</td>
					    <td>${element.description}</td>
					    <td>${element.ingredients}</td>
					  </tr>
					</c:forEach>
					</table-->
					
	
	    <ul data-role="listview" data-inset="true">
	<c:forEach items="${recipes}" var="element"> 

      <li>
        <a href="#"><img src=${element.image}></a>
      </li>
      </c:forEach>
    </ul>
  </div>
</div> 
					
					
					
		      </form>
		          
		  </div>
		</body>
		</html>
