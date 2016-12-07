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
			<option value="Murders_per_capita">Murders Per Capita</option>
			<option value="Gun_murders_per_capita">Gun Murders Per Capita</option>
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

<b>You get an average! You get an average! We all get averages!</b>

<form method="query" action="Avg.jsp">
		Select the attribute you'd like to view followed by the type of data. <br>
			<select name="attribute" size=1>
			<option value="Mental_Health_Access">Mental Health Access</option>
			<option value="Poverty_Level">Poverty Level</option>
			<option value="Income_Level">Income Level</option>
			<option value="Gun_Ownership">Gun Ownership</option>
			<option value="Percent_No_Abortion_Provider">Percent No Abortion Provider</option>
			<option value="Unemployment_Rate">Unemployment Rate</option>
			<option value="2016_Presidential_Election">Political Affiliation</option>
			<option value="CCW_Type">Concealed Carry Permit Type</option>
			<option value="Background_Checks">Background Checks</option>
			<option value="Region">Region</option>
			<option value="Division">Division</option>
		</select>&nbsp;
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;
		<input type="submit" value="submit">
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