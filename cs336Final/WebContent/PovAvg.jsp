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
			String table = request.getParameter("table");
			String str,str2,str3,str4;
			String table_result;
			String equals = " WHERE ";
			int count = 0;
			//Make a SELECT query from the table specified by the 'command' parameter at the HelloWorld.jsp
			
			if(table.equals("StateInfo")){
				table_result = " AVG(Population), AVG(Gun_Ownership), AVG(Income_Level), AVG(Poverty_Level), AVG(Unemployment_Rate), AVG(Mental_Health_Access), AVG(Percent_No_Abortion_Provider)";
			}
			else if(table.equals("Murders")){
				table= "Murders,StateInfo ";
				equals += " Murders.State = StateInfo.State AND ";
				table_result = " AVG(Total_murders), AVG(Gun_murders), AVG(Handguns), AVG(Rifles), AVG(Shotguns),  AVG(Firearms)";
			}
			else{
				table = "GunControlLaws,StateInfo ";
				equals += " GunControlLaws.State = StateInfo.State AND ";
				table_result = "AVG(Gun_Law_Rank), AVG(Gun_Death_Rate_Rank)";
			}
			

				str = "SELECT " + table_result + " FROM " + table + equals + "  StateInfo.Poverty_Level <= 12 AND Poverty_Level>=9;";
				str2 = "SELECT " + table_result + " FROM " + table + equals + "  StateInfo.Poverty_Level <= 17 AND Poverty_Level>=13;";
				str3 = "SELECT " + table_result + " FROM " + table + equals + "  StateInfo.Poverty_Level <= 22 AND Poverty_Level>=18;";	
				//Run the query against the database.

			
			ResultSet result = stmt.executeQuery(str);
			//ResultSet result2 = stmt.executeQuery(str2);
			//ResultSet result3 = stmt.executeQuery(str3);
			//ResultSet result4 = stmt.executeQuery(str4);
			//Make an HTML table to show the results in:
			out.print("<table BORDER>");

			//make a row
			out.print("<tr ALIGN=CENTER>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("Poverty Level");
			out.print("</td>");
			//make a column
			
			//depending on the radio button selection make a column header for Manufacturer if the beers table was selected and Address if the bars table was selected
			if (table.equals("StateInfo")){
				out.print("<td>");
				out.print("Avg Population");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Percent Gun Owners");
				out.print("</td>");
				
				out.print("<td>");
				out.print(" Avg Income Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Poverty Rate");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Unemployment Rate");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Mental Health Access Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg % Women with No Abortion Provider in County");
				out.print("</td>");

				
			}
			
			if (table.equals("Murders,StateInfo ")){
				out.print("<td>");
				out.print("Avg Total Murders");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Murders by Gun");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Murders by Handgun");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Murders by Rifle");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Murders by Shotgun");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Murders by Firearm");
				out.print("</td>");
			}
			
			if (table.equals("GunControlLaws,StateInfo ")){
				out.print("<td>");
				out.print("Avg Gun Law Rank");
				out.print("</td>");
				
				out.print("<td>");
				out.print("Avg Gun Death Rate Rank");
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
				if(count == 0){
					out.print("9 to 12");
				}
				else if(count == 1){
					out.print("13 to 17");
				}
				else{
					out.print("18 to 22");
				}
				
				out.print("</td>");
				//Print out current bar/beer additional info: Manf or Address
				if (table.equals("StateInfo")){
					out.print("<td>");
					out.print(result.getString("AVG(" + "Population" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Gun_Ownership" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Income_Level" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Poverty_Level" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Unemployment_Rate" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Mental_Health_Access" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Percent_No_Abortion_Provider" + ")"));
					out.print("</td>");

				}
				
				if (table.equals("Murders,StateInfo ")){
					out.print("<td>");
					out.print(result.getString("AVG(" + "Total_murders" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Gun_murders" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Handguns" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Rifles" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Shotguns" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Firearms" + ")"));
					out.print("</td>");
				}
				
				if (table.equals("GunControlLaws,StateInfo ")){
					out.print("<td>");
					out.print(result.getString("AVG(" + "Gun_Law_Rank" + ")"));
					out.print("</td>");
					
					out.print("<td>");
					out.print(result.getString("AVG(" + "Gun_Death_Rate_Rank" + ")"));
					out.print("</td>");
					
					
					
				}
				if(!result.next()){
					if(count == 0){
						count++;
						result = stmt.executeQuery(str2);
						continue;
					}
					else if(count == 1){
						count++;
						result = stmt.executeQuery(str3);
						continue;
					}
					else{
						break;
					}
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