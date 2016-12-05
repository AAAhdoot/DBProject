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
			//Get the combobox from the HelloWorld.jsp
			String entity = request.getParameter("PoliticalChoice");
			String entity2 = request.getParameter("Party");
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the HelloWorld.jsp
			String str = "SELECT * FROM StateInfo WHERE " + entity + " = \"" + entity2 + "\";";
			//Run the query against the database.
			out.print(str);
			ResultSet result = stmt.executeQuery(str);
			
			//Make an HTML table to show the results in:
			out.print("<table BORDER>");

			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("State");
			out.print("</td>");
			
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
			out.print("Concealed Carry Limit");
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
			//make a column

			
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr ALIGN=CENTER>");
				//make a column
				out.print("<td>");
				//Print out current bar name:
				out.print(result.getString("State"));
				out.print("</td>");
				
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
				out.print(result.getString("CCW_Type"));
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
				
				out.print("</tr>");

			}
			out.print("</table>");

			//close the connection.
			con.close();

		} catch (Exception e) {
		}
	%>

</body>
</html>