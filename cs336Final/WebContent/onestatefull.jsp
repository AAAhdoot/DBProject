<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<String>();

		try {

			//Create a connection string
		String url = "jdbc:mysql://rds-mysql-arielashni.c87yzfqjfzoj.us-west-2.rds.amazonaws.com:3306/DBProject";
		//Load JDBC driver - the interface standardizing the connection procedure. Look at WEB-INF\lib for a mysql connector jar file, otherwise it fails.
		Class.forName("com.mysql.jdbc.Driver");

		//Create a connection to your DB
		Connection con = DriverManager.getConnection(url, "arielashni", "lelohex69");

			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the selected radio button from the HelloWorld.jsp
			String state = request.getParameter("state");
			String table = request.getParameter("table");
						
			//Make a SELECT query from the table specified by the 'command' parameter at the HelloWorld.jsp
			String str = "SELECT * FROM " + table + " WHERE State= " + "\'" + state + "\'" + ";";
			//Run the query against the database.

			
			ResultSet result = stmt.executeQuery(str);			
			
			//Make an HTML table to show the results in:
			out.print("<table BORDER>");

			//make a row
			out.print("<tr ALIGN=CENTER>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("State");
			out.print("</td>");
			//make a column
			
			//depending on the radio button selection make a column header for Manufacturer if the beers table was selected and Address if the bars table was selected
			if (table.equals("StateInfo")){
				out.print("<td>");
				out.print("Population");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Percent Gun Owners");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Income Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Poverty Rate");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Unemployment Rate");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Mental Health Access Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("2016 Presidential Vote");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Governor");
				out.print("</td>");
				
				out.print("<td>");
				out.print("% Women with No Abortion Provider in County");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Region");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Division");
				out.print("</td>");
				
			}
			
			if (table.equals("Murders")){
				out.print("<td>");
				out.print("Total Murders");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Murders by Gun");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Murders by Handgun");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Murders by Rifle");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Murders by Shotgun");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Murders by Firearm");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Murders Per Capita");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Gun Murders Per Capita");
				out.print("</td>");
			}
			
			if (table.equals("GunControlLaws")){
				out.print("<td>");
				out.print("Gun Law Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Grade");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Gun Death Rate Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Requires Background Checks");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Concealed Carry Permit Type");
				out.print("</td>");
	
			}
			
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr ALIGN=CENTER>");
				//make a column
				out.print("<td>");
				//Print out current bar or beer name:
				out.print(state);
				out.print("</td>");
				//Print out current bar/beer additional info: Manf or Address
				if (table.equals("StateInfo")){
					out.print("<td>");
					out.print(result.getString("Population"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Gun_Ownership"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Income_Level"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Poverty_Level"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Unemployment_Rate"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Mental_Health_Access"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("2016_Presidential_Election"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Governor"));
					out.print("</td>");
					

					out.print("<td>");
					out.print(result.getString("Percent_No_Abortion_Provider"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Region"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Division"));
					out.print("</td>");
				}
				
				if (table.equals("Murders")){
					out.print("<td>");
					out.print(result.getString("Total_murders"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Gun_murders"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Handguns"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Rifles"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Shotguns"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Firearms"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Murders_per_capita"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Gun_murders_per_capita"));
					out.print("</td>");
				}
				
				if (table.equals("GunControlLaws")){
					out.print("<td>");
					out.print(result.getString("Gun_Law_Rank"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Grade"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Gun_Death_Rate_Rank"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("Background_Checks"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("CCW_Type"));
					out.print("</td>");
					
					
				}

			}
			out.print("</table>");

			//close the connection.
			con.close();

		} catch (Exception e) {
		}
	%>

</body>
</html>