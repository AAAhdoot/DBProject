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

            String table;
			
			String param = request.getParameter("Attribute");
			String choice = request.getParameter("Choice");

			if(param.equals("Population") || param.equals("Gun_Ownership") || param.equals("Poverty_Level") || param.equals("Unemployment_Rate") || param.equals("Mental_Health_Access") || param.equals("Percent_No_Abortion_Provider")){
				table = "StateInfo";
			}
			else if(param.equals("Total_murders") || param.equals("Gun_murders") || param.equals("Handguns") || param.equals("Shotguns") || param.equals("Rifles") || param.equals("Firearms") || param.equals("Murders_per_capita") || param.equals("Gun_murders_per_capita")){
				table = "Murders";
			}
			else{
				table = "GunControlLaws";
			}
			
			String str = "SELECT State," + param + " FROM " + table + " WHERE " + param + "= (SELECT " + choice + "(" + param + ")" + " FROM " + table + ");";
			
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the HelloWorld.jsp
						
			//Run the query against the database.
						
			ResultSet result = stmt.executeQuery(str);

			
			//Make an HTML table to show the results in:
			out.print("<table BORDER>");

			//make a row
			out.print("<tr ALIGN = CENTER>");

			out.print("<td>");
			//print out column header
			out.print("State");
			out.print("</td>");	
			out.print("<td>");
			//print out column header
			out.print(param);
			out.print("</td>");
			//make a column
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				
				
				//make a row
				out.print("<tr ALIGN = CENTER>");
				//make a column
				

				out.print("<td>");
				//Print out current bar name:
				out.print(result.getString("State"));
				out.print("</td>");
				out.print("<td>");
				//Print out current bar name:
				out.print(result.getString(param));
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