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
			
			String entity1 = "";
			String entity2 = "";
			
			
			int empty1 = 1;
			int empty2 = 1;
			
			
			String param1 = request.getParameter("StateInfo");
			String param2 = request.getParameter("Murders");
			

			if(!param1.equals("")){
				entity1+= "StateInfo." + param1;
				entity1 = " AVG(" + entity1 + ")"; 
				if(!param2.equals("")){
					entity1+=",";
				}
				empty1 = 0;
			}
			
			if(!param2.equals("")){
				entity2+= " AVG(Murders." + param2 + ")";
				empty2 = 0;
			}
			
			
			if(param1.equals("") && param2.equals("")){
				out.print("You have selected no values.");
				return;
			}
			
			String str = "SELECT" + entity1 + entity2 + " FROM StateInfo, Murders;";
			
			ResultSet result = stmt.executeQuery(str);
			
			//Make an HTML table to show the results in:
			out.print("<table>");

			//make a row
			out.print("<tr>");
			//make a column
			
			if(empty1==0){
			out.print("<td>");
			//print out column header
			out.print(param1);
			out.print("</td>");
			//make a column
			}
			if(empty2==0){
			out.print("<td>");
			out.print(param2);
			out.print("</td>");
			//make a column
			}
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr>");
				//make a column
			
				if(empty1==0){
				out.print("<td>");
				//Print out current bar name:
				out.print(result.getString(1));
				out.print("</td>");
				}
				
				if(empty2==0){
					out.print("<td>");
					if(empty1 == 1){
						out.print(result.getString(1));
					}
				//Print out current beer name:
				else{
					out.print(result.getString(2));
				}
				out.print("</td>");
				}
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