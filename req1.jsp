<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<%								

Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();

String hashcode=request.getParameter("hashcode");

String fname=request.getParameter("fname");

Statement st=con.createStatement();

st1.executeUpdate("update temp set hashcode='"+hashcode+"' where filename='"+fname+"' ");

st1.executeUpdate("delete from request");
st1.executeUpdate("insert into request(filename,status) values('"+fname+"','request')");
response.sendRedirect("req2.jsp?fname="+fname+"");

%>
