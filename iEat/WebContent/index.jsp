<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>Home | iEat</title>
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
  <div data-role="page" data-control-title="Home" id="page1">
      <div data-role="panel" id="panel7" data-position="left" data-display="reveal" data-theme="a">
          <ul data-role="listview" data-divider-theme="h" data-inset="false">
              <li data-role="list-divider" role="heading">
                  Menu
              </li>
              <li data-theme="a">
                  <a href="Today_Recipe.html" data-transition="slide">
                      Today's Recipe
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Recipes
                  </a>
              </li>
              <li data-theme="a">
                  <a href="ISpy.html" data-transition="slide">
                      Food Finder
                  </a>
              </li>
              <li data-role="list-divider" role="heading">
                  Personal
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Favorites
                  </a>
              </li>
          </ul>
      </div>
      <div data-role="panel" id="panel3" data-position="left" data-display="reveal" data-theme="a">
          <ul data-role="listview" data-divider-theme="h" data-inset="false">
              <li data-role="list-divider" role="heading">
                  Menu
              </li>
              <li data-theme="a">
                  <a href="Today_Recipe.html" data-transition="slide">
                      Today's Recipe
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Recipes
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Food Finder
                  </a>
              </li>
              <li data-role="list-divider" role="heading">
                  Personal
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Favorites
                  </a>
              </li>
          </ul>
      </div>
      <div data-role="panel" id="panel6" data-position="left" data-display="reveal" data-theme="a">
          <ul data-role="listview" data-divider-theme="h" data-inset="false">
              <li data-role="list-divider" role="heading">
                  Menu
              </li>
              <li data-theme="a">
                  <a href="Today_Recipe.html" data-transition="slide">
                      Today's Recipe
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Recipes
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Food Finder
                  </a>
              </li>
              <li data-role="list-divider" role="heading">
                  Personal
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Favorites
                  </a>
              </li>
          </ul>
      </div>
      <div data-role="panel" id="panel5" data-position="left" data-display="reveal" data-theme="a">
          <ul data-role="listview" data-divider-theme="h" data-inset="false">
              <li data-role="list-divider" role="heading">
                  Menu
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Today's Recipe
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Recipes
                  </a>
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Food Finder
                  </a>
              </li>
              <li data-role="list-divider" role="heading">
                  Personal
              </li>
              <li data-theme="a">
                  <a href="index.html" data-transition="slide">
                      Favorites
                  </a>
              </li>
          </ul>
      </div>
      <div data-theme="a" data-role="header">
          <h3>
              Home
          </h3>
          <a data-controltype="panelbutton" data-role="button" href="#panel7" data-icon="bars" data-iconpos="notext">
          </a>
      </div>
      <div data-role="content">
          <a data-role="button" data-inline="true" method="get" action=<%= response.encodeURL(request.getContextPath()+"/Home?action=login")  %> class="ui-btn-right">
              Sign in
          </a>
          <a data-role="button" data-inline="true" href="index.jsp">
              Sign up
          </a>
			<input type="image" id="myimage" style="height:200px;width:200px;" src="img/facebook-connect-logo.png" />
          <div data-role="fieldcontain" data-controltype="searchinput">
              <input name="" id="searchinput1" placeholder="Type a food" value="" type="search"/>
          </div>
          <div style="" data-controltype="image">
              <img style="width: 280px; height: 150px" src="img/app_logo.png"/>
          </div>
          <h5>
              Today's Recipe
          </h5>
          <a href="Today_Recipe.html" data-controltype="image">
              <div style="display: inline">
                  <img style="width: 150px; height: 150px" src="img/fruit_salad.jpg"/>
              </div>
          </a>
      </div>
      <div data-theme="a" data-role="footer">
          <span class="ui-title">
          </span>
      </div>
  </div>
</body>
</html>
