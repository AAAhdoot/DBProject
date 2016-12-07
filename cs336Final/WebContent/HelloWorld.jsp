<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CS336 Final Project</title>
</head>
<body BACKGROUND = "city.png">

<b><font color = "blue"><font size = "+10">Welcome to our final project for CS336 - Databases (Fall 2016).</font></b></font>

<hr>

<br>
We thought it'd be interesting to explore <b>incidences of gun violence</b> across the nation, and link in some data that isn't usually included when discussing gun violence.
We collected a lot of data, some more interesting than others: how strict a state's gun laws are, the <b>average unemployment rate</b> in a state, abortion availability,
the state's <b>political leanings</b>, incidences of gun violence (separated by type of gun), and more.
<br>
<br>
<mark> Note: Data surrounding murders by different types of guns was not available for Florida.</mark> Our data comes from the FBI's Crime in the United States Report, which relies on data 
that is submitted through the Uniform Crime Reporting (UCR) Program. In multiple years (including the most recent one), the supplemental homicide data submitted by the Florida state UCR Program
did not meet UCR guidelines and was not included in the FBI table (Table 20 of the Crime in the US index). 
 
<br>
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

Have fun playing around on our site! There are a bunch of powerful queries that you can run.

<br>
 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="findings.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark>Want to see some cool things we found out when working with this data?</mark>
  <input type="submit" value="Show me some cool findings." />
</form>
<br>
<!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="faq.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark> Confused about what some of these values mean?</mark> See a key to these values by pressing the Submit button.  </b>
  <input type="submit" value="Submit" />
</form>
<br>

 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="graphs.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
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
  <input type="radio" name="command" value="StateInfo"/> Let's look at demographic data by state.
  <br>
  <input type="radio" name="command" value="Murders"/> Let's look at gun violence by state.
    <!-- when the radio for bars is chosen, then 'command' will have value 
     | 'bars', in the show.jsp file, when you access request.parameters -->
  <br>
  <input type="radio" name="command" value="GunControlLaws"/> Let's look at gun control laws by state.
  <br>
  <input type="submit" value="submit" />
</form>
<br>

<form method="get" action="morespecific.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<b>Want to see more specific data?</b>
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
<b>

<b> Want to see state-based (demographic) data based on a state's political affiliation? </b> Like abortion access, mental health access, poverty level, etc.
Select from below whether you'd like to (1) explore by how the state voted in the 2016 Presidential Election or (2) the state's governor, and what political party you'd like to search.
<br>
	<form method="query" action="politicalexplore.jsp">
		<select name="PoliticalChoice" size=1>
		Choose between the 2016 Presidential Election and the state's governor.<br>
			<option value="2016_Presidential_Election">2016 Presidential Election</option>
			<option value="Governor">Governor</option>
		</select>&nbsp;<p>
		Choose a political party. <br>
		<select name="Party" size=1>
			<option value="Republican">Republican</option>
			<option value="Democratic">Democrat</option>
		</select>&nbsp;
		<input type="submit" value="submit"> <br>
	</form>
<br>
</body>
</html>