<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>IllumiNation: The Specifics</title>
</head>
<body BACKGROUND = "city.png">

<b><font color = "navy"><font size = "+6">See more specific data.</font></b></font>

<hr>


<br>
 <!-- Show html form to i) display something, ii) choose an action via a 
  | radio button -->
<form method="get" action="averageview.jsp" enctype=text/plain>
    <!-- note the show.jsp will be invoked when the choice is made -->
	<!-- The next lines give HTML for radio buttons being displayed -->
	<br>
	<mark>Want to see how your state's values match up against average values for all states?</mark>
  <input type="submit" value="Yes!" />
</form>
<br>

<hr>

<b> Want to see all the demographic data, gun violence data, or gun control data for a given state?</b><br>
Select the state you live in, or that you're planning on moving to, to see information that could impact your decision.

<br>

Select a state. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select a category.
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
		</select>&nbsp;
		<select name="table" size=1>
			<option value="StateInfo">Demographic Data</option>
			<option value="Murders">Gun Violence Data</option>
			<option value="GunControlLaws">Gun Control Data</option>
		</select>&nbsp;<input type="submit" value="submit">
	</form>
<br>

<b> Already know what particular types of information you want to know about your state? </b>
<br>
See selected information for a particular state. Select a state and between 1-3 attributes to display.<br>

&nbsp;&nbsp;&nbsp;Select a state.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demographic Data &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Murder Data &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gun Control Data<br>
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
			<option value="Murders_per_capita">Murders Per Capita</option>
			<option value="Gun_murders_per_capita">Gun Murders Per Capita</option>
		</select>&nbsp;
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
			<option value="CCW_Type">Concealed Carry</option>
		</select>&nbsp;
		 <input type="submit" value="submit">
		
	</form>
<br>

<b> Want to move to a state that requires background checks to purchase a gun? </b> Or, on the flip side, want to move to a state that requires background checks to purchase guns?
<br>
Use the drop-down below to select states that do or do not require background checks to purchase guns.
<br>
	<form method="query" action="backgroundcheck.jsp">
		<select name="Checker" size=1>
			<option value="no">Do not</option>
			<option value="yes">Do</option>
		</select>&nbsp; <input type="submit" value="submit">
	</form>
<br>

<b>Want to see which states have received a passing grade for their gun control laws?</b>
<br>
Note: The grades listed below are the only grades that states have received in the past year.

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
Want to see how your state stacks up against all other states?</b>
<br>
Use this section to view three pieces of information (one from each table) for all states within the United States at the same time.<br>

Select between 1 and 3 attributes to display.
<br>

	<form method="query" action="triquery.jsp">
	&nbsp;&nbsp;Demographic Data &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Murder Data &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gun Control Data<br>
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
			<option value="Murders_per_capita">Murders Per Capita</option>
			<option value="Gun_murders_per_capita">Gun Murders Per Capita</option>
		</select>&nbsp;
		
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
			<option value="CCW_Type">Concealed Carry</option>
		</select>&nbsp;
		<input type="submit" value="submit">
	</form>
<br>

<b> Want to see how the state you're planning on moving to stacks up against the state you currently live in? </b>
<br>
Select two states below to compare them across multiple attributes. 
<br> From the three drop-downs following your selected states, choose up to three attributes (one from each table) against which you wish to compare your two states.
<br>
	<form method="query" action="statecompare.jsp">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First state &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Second state &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demographics &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Murders &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gun Control<br>
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
		</select>&nbsp;
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
			<option value="Murders_per_capita">Murders Per Capita</option>
			<option value="Gun_murders_per_capita">Gun Murders Per Capita</option>
		</select>&nbsp;
		<select name="GunControlLaws" size=1>
			<option value=""></option>
			<option value="Gun_Law_Rank">Gun Law Rank</option>
			<option value="Grade">Grade</option> 
			<option value="Gun_Death_Rate_Rank">Gun Death Rate Rank</option>
			<option value="Background_Checks">Background Checks</option>
			<option value="CCW_Type">Concealed Carry</option>
		</select>&nbsp;
	 <input type="submit" value="submit">
	</form>
<br>


<b> Affiliated with a political party? </b>
<br>
You can use this next section to explore state-based demographic data based on a state's political affiliation.<br>
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