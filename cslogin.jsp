
<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("uid");
String password = request.getParameter("pwd");

con = databasecon.getconnection();
stmt = con.createStatement();

if(uname.equals("CS") && (password.equals("CS"))){
response.sendRedirect("cshome.jsp");
}else{
response.sendRedirect("cloudserver.jsp?msg=unsucc");
}
%>