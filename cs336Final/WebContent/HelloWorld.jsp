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

<b><font color = "blue">Welcome to our final project for CS336 - Databases (Fall 2016).</b>
We thought it'd be interesting to explore incidences of gun violence across the nation, and link in some data that isn't usually included when discussing gun violence.
We collected a lot of data, some more interesting than others: how strict a state's gun laws are, the average unemployment rate in a state, abortion availability,
the state's political leanings, incidences of gun violence (separated by type of gun), and more.</font>
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
	<b>Want to see our sources?</b>
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
	<b>Want to see some cool things we found out when working with this data?</b>
  <input type="submit" value="Show me some cool findings." />
</form>
<br>
<!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="faq.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<b> Confused about what some of these values mean? See a key to these values by pressing the Submit button.  </b>
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
<b>Want to view all the demographic, gun violence, or gun control data for a given state? </b> Select your state below and the type of data you'd like to view.

<br>

Select a state.
<form method="query" action="onestatefull.jsp">
		<select name="state" size=1>
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
		</select>&nbsp;<p>
		Select a category of information. <br>
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b> See selected information for a particular state. </b> Choose up to three different attributes (one from Demographic Data, one from Gun Violence, and one from Gun Control Laws) for your state.<br>

Select a state. 
<form method="query" action="onestate.jsp">
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
		</select>&nbsp; <p>
		Would you like to add an attribute related to demographic data? If not, leave this drop-down blank.<br>
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
		</select>&nbsp; <p>
		Would you like to add an attribute related to gun violence? If not, leave this drop-down blank.<br>
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;<p>
		Would you like to add an attribute related to gun control laws? If not, leave this drop-down blank.<br>
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
		</select>&nbsp;
		 <input type="submit" value="submit">
		
	</form>
<br>
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
Show me all the states that either do or do not require background checks to purchase guns.</b>
<br>
	<form method="query" action="backgroundcheck.jsp">
		<select name="Checker" size=1>
			<option value="no">Do not</option>
			<option value="yes">Do</option>
		</select>&nbsp; <input type="submit" value="submit">
	</form>
<br>

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

<b>Let's query the states by grade. </b> (Note: The grades listed below are the only grades that states have received in the past year.)

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
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>
<b>
Want to play around with some averages? </b> Select a value from the first drop-down or a value from the second drop-down (or both) and we'll calculate
the average value for each attribute across all states.
<br>
	<form method="query" action="avgmurders.jsp">
		<select name="StateInfo" size=1>
		    <option value=""></option>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
		</select>&nbsp;<p>
		Choose an attribute from this drop-down, or leave it blank. <br>
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;
		<input type="submit" value="submit">
	</form>
<br>

<b>Want to view all the average demographic, gun violence, or gun control data for a given group of states? </b> Select your category below and the type of data you'd like to view.

<br>

Select a category.
<form method="query" action="GeoAvg.jsp">
		<select name="geo" size=1>
			<option value="Region">Region</option>
			<option value=Division>Division</option>
		</select>&nbsp;<p>
		Select a category of information. <br>
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b>Want to view all the average demographic, gun violence, or gun control data for states based on political affiliation? </b> 

<br>

<form method="query" action="PolAvg.jsp">
		Select the type of data you'd like to view. <br>
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b>Want to view all the average demographic, gun violence, or gun control data for states based on mental health access? </b> 

<br>

<form method="query" action="MentalAvg.jsp">
		Select the type of data you'd like to view. <br>
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b>Want to view all the average demographic, gun violence, or gun control data for states based on poverty level? </b> 

<br>

<form method="query" action="PovAvg.jsp">
		Select the type of data you'd like to view. <br>
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b>
Want to see three pieces of information (one from each table) for all states at the same time? </b> Select the attributes below that you'd like to display.
<br>
	<form method="query" action="triquery.jsp">
		<select name="StateInfo" size=1>
		Choose an attribute related to demographic data, or leave this drop-down blank. <br>
		    <option value=""></option>
			<option value="Population">Population</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Income_Level">Income Level</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="Mental_Health_Access">Mental Health Access</option>
			<option value="2016_Presidential_Election">2016 Presidential Election</option>
			<option value="Governor">Governor</option>
		</select>&nbsp;<p>
		Choose a value from this drop-down, or leave it blank. <br>
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;<p>
		Choose a value from this drop-down, or leave it blank. <br>
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
		</select>&nbsp;
		<input type="submit" value="submit">
	</form>
<br>

<b>Select two states below to compare them across multiple attributes. </b> From the three drop-downs following your selected states, choose up to three attributes (one from each table) against which you wish to compare your two states.
<br>
	<form method="query" action="statecompare.jsp">
		Choose your first state. <br>
		<select name="State1" size=1>
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
		</select>&nbsp;<p>
		Select a second state. <br>
		<select name="State2" size=1>
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
		</select>&nbsp;<p>
		Select a demographic-related attribute, or leave this column blank. <br>
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
		</select>&nbsp;<p>
		Choose a value from this drop-down, or leave it blank. <br>
		<select name="Murders" size=1>
			<option value=""></option>
			<option value="Total_murders">Total Murders</option>
			<option value="Gun_murders">Gun Murders</option>
			<option value="Handguns">Handgun Murders</option>
			<option value="Rifles">Rifle Murders</option>
			<option value="Shotguns">Shotgun Murders</option>
			<option value="Firearms">Firearm Murders</option>
		</select>&nbsp;<p>
		Choose a value from this drop-down, or leave it blank. <br>
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
		</select>&nbsp;
	 <input type="submit" value="submit">
	</form>
<br>

</body>
</html>