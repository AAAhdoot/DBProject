<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="€bootstrap/css/bootstrap.min.css" rel="stylesheet"€ type="text/css" />
<script type="text/javascript€" src="€bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>IllumiNation: Home</title>
</head>
<body BACKGROUND = "city.png">

<b><font color = "navy"><font size = "+8">IllumiNation</font></font></b>
<br>
<b><font color = "navy">Shedding light on the dark side of gun violence in the United States. </font></b>

<br>
 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
 
<hr> 
 
 
<form method="get" action="about.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark>Want to know more about us and the motivations behind this website?</mark>
  <input type="submit" value="Submit" />
</form>

 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
  
<form method="get" action="sources.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark>Want to see our sources?</mark>
  <input type="submit" value="Take me to your sources!" />
</form>
<br>

Have fun playing around on our site! There is a lot of powerful information you can uncover.

<br>
 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="findings.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark>Want to see some interesting things we found out when working with this data?</mark>
  <input type="submit" value="Show me some cool findings." />
</form>

<!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="faq.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark> Confused about what some of your results mean?</mark> See a key to these values by pressing the Submit button.  </b>
  <input type="submit" value="Submit" />
</form>
<br>

 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="graphs.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<b>Want to see some cool graphs?</b>
  <input type="submit" value="Show me some cool graphs." />
</form>
<br>

<b>See our full data sets:</b>
 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="show.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
  <input type="radio" name="command" value="StateInfo"/> Let's explore demographic data for all states within the United States.
  <br>
  <input type="radio" name="command" value="Murders"/> Let's check out some data surrounding gun violence for all states.
    <!-- when the radio for bars is chosen, then 'command' will have value 
     | 'bars', in the show.jsp file, when you access request.parameters -->
  <br>
  <input type="radio" name="command" value="GunControlLaws"/> Let's explore gun control data for all states.
  <br>
  <input type="submit" value="submit" />
</form>

<form method="get" action="morespecific.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<b>Thinking about moving to a new state, or traveling temporarily? Even if you don't know where you want to move, you can use our website to see more specific data about states, gun control, and gun violence.</b>
  <input type="submit" value="Show me more specific data." />
</form>
<br>

<hr>

<b>
Show me the top X states with the highest values for a given attribute. </b>
Select the attribute you'd like to explore further from the first column. Choose whether you'd like to sort your results in ascending or descending order, then limit the number of results you're shown using the third drop-down.
<br>

	<form method="query" action="ToporBottom.jsp">
	Select an attribute.<br>
			<select name="Attribute" size=1>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
			<option value="Percent_No_Abortion_Provider">Difficulty of Abortion Access</option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
			<option value="Murders_per_capita">Murders Per Capita</option>
			<option value="Gun_murders_per_capita">Gun Murders Per Capita</option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
		</select>&nbsp;<p>
		Choose whether you'd like your results sorted in ascending or descending order. <br>
		<select name="Order" size=1>
			<option value="ASC">Ascending</option>
			<option value="DESC">Descending</option>
		</select>&nbsp;<p>
		Choose how many results you'd like to display. <br>
			<select name="TBVal" size=1>
			<option value="5">5</option>
			<option value="10">10</option>
			<option value="15">15</option>
			<option value="20">20</option>
			<option value="25">25</option>
			<option value="30">30</option>
			<option value="35">35</option>
			<option value="40">40</option>
			<option value="45">45</option>
			<option value="50">50</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b>
Want to see the lowest or highest value for a particular attribute? </b> Ex: the lowest unemployment rate, the highest number of murders by gun in a state, the largest population.
Select an attribute from the first drop-down and whether you'd like to view the minimum or maximum value for that attribute from the second column.

<br>
	<form method="query" action="minmax.jsp">
	Select an attribute. <br>
			<select name="Attribute" size=1>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
			<option value="Percent_No_Abortion_Provider">Difficulty of Abortion Access</option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
			<option value="Murders_per_capita">Murders Per Capita</option>
			<option value="Gun_murders_per_capita">Gun Murders Per Capita</option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
		</select>&nbsp;<p>
		Choose whether you'd like the minimum or maximum for that attribute. <br>
		<select name="Choice" size=1>
			<option value="MIN">Smallest</option>
			<option value="MAX">Largest</option>
		</select>&nbsp;<br>
<input type="submit" value="submit">
	</form>
<br>
</body>
</html>