<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<%								

Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();

String fid=request.getParameter("fid");
String uid=request.getParameter("uid");
 String chal=request.getParameter("chal");
Statement st=con.createStatement();

Statement st2=con.createStatement();


st1.executeUpdate("delete from verify");
int i=st2.executeUpdate("insert into verify values( '"+uid+"','"+chal+"','request')");

st1.executeUpdate("delete from request");
st1.executeUpdate("insert into request(filename,status) values('"+uid+"','request')");
response.sendRedirect("req22.jsp?fid="+fid+"&uid="+uid+" ");

%>
