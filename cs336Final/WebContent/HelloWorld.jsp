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
<body>

<br>
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

Would you like to see the total number of murders by gun that occurred in your state? Select your state from the drop-down below.
<br>
	<form method="query" action="totalmurdersbystate.jsp">
		<select name="State" size=1>
			<option value="Alabama">Alabama</option>
			<option value="Alaska">Alaska</option>
			<option value="Arizona">Arizona</option>
			<option value="Arkansas">Arkansas</option>
			<option value="California">California</option>
			<option value="Colorado">Colorado</option>
			<option value="Connecticut">Connecticut</option>
			<option value="Delaware">Delaware</option>
			<option value="District of Columbia">District of Columbia</option>
			<option value="Florida">Florida</option>
			<option value="Georgia">Georgia</option>
			<option value="Hawaii">Hawaii</option>
			<option value="Idaho">Idaho</option>
			<option value="Illinois">Illinois</option>
			<option value="Indiana">Indiana</option>
			<option value="Iowa">Iowa</option>
			<option value="Kansas">Kansas</option>
			<option value="Kentucky">Kentucky</option>
			<option value="Louisiana">Louisiana</option>
			<option value="Maine">Maine</option>
			<option value="Maryland">Maryland</option>
			<option value="Massachusetts">Massachusetts</option>
			<option value="Michigan">Michigan</option>
			<option value="Minnesota">Minnesota</option>
			<option value="Mississippi">Mississippi</option>
			<option value="Missouri">Missouri</option>
			<option value="Montana">Montana</option>
			<option value="Nebraska">Nebraska</option>
			<option value="Nevada">Nevada</option>
			<option value="New Hampshire">New Hampshire</option>
			<option value="New Jersey">New Jersey</option>
			<option value="New Mexico">New Mexico</option>
			<option value="New York">New York</option>
			<option value="North Carolina">North Carolina</option>
			<option value="North Dakota">North Dakota</option>
			<option value="Ohio">Ohio</option>
			<option value="Oklahoma">Oklahoma</option>
			<option value="Oregon">Oregon</option>
			<option value="Pennsylvania">Pennsylvania</option>
			<option value="Rhode Island">Rhode Island</option>
			<option value="South Carolina">South Carolina</option>
			<option value="South Dakota">South Dakota</option>
			<option value="Tennessee">Tennessee</option>
			<option value="Texas">Texas</option>
			<option value="Utah">Utah</option>
			<option value="Vermont">Vermont</option>
			<option value="Virginia">Virginia</option>
			<option value="Washington">Washington</option>
			<option value="West Virginia">West Virginia</option>
			<option value="Wisconsin">Wisconsin</option>
			<option value="Wyoming">Wyoming</option>
		</select>&nbsp;
		
		<select name="StateInfo" size=1>
		    <option value=""></option>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Income_Level">Income Level</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
			<option value="2016_Presidential_Election">2016 Presidential Election</option>
			<option value="Governor">Governor</option>
		</select>&nbsp;
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
		</select>&nbsp;
		<br> <input type="submit" value="submit">
		
	</form>
<br>

Show me the top X states with the highest rates of gun violence.
<br>
	<form method="query" action="mostdanger.jsp">
		<select name="TopVal" size=1>
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
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
<br>

Show me the top X states with the lowest rates of gun violence.
<br>
	<form method="query" action="mostsafe.jsp">
		<select name="TopVal2" size=1>
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
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
<br>

Show me all the states that either do or do not require background checks to purchase guns.
<br>
	<form method="query" action="backgroundcheck.jsp">
		<select name="Checker" size=1>
			<option value="no">Do not</option>
			<option value="yes">Do</option>
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
<br>

Let's query the states by grade. (Note: The grades listed below are the only grades that states have received in the past year.)
<br>
	<form method="query" action="query.jsp">
		<select name="Grade" size=1>
			<option value="A-">A-</option>
			<option value="B+">B+</option>
			<option value="B">B</option>
			<option value="B-">B-</option>
			<option value="C">C</option>
			<option value="C-">C-</option>
			<option value="D">D</option>
			<option value="D-">D-</option>
			<option value="F">F</option>
		</select>&nbsp;<br> <input type="submit" value="submit">
	</form>
<br>

Want to play around with some averages? Select one value or two, and we'll calculate the average across all states.

<br>
	<form method="query" action="avgmurders.jsp">
		<select name="StateInfo" size=1>
		    <option value=""></option>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
		</select>&nbsp;
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;
		<br> <input type="submit" value="submit">
	</form>
<br>


Tri-Queries

<br>
	<form method="query" action="triquery.jsp">
		<select name="StateInfo" size=1>
		    <option value=""></option>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Income_Level">Income Level</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
			<option value="2016_Presidential_Election">2016 Presidential Election</option>
			<option value="Governor">Governor</option>
		</select>&nbsp;
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
		</select>&nbsp;
		<br> <input type="submit" value="submit">
	</form>
<br>

</body>
</html>