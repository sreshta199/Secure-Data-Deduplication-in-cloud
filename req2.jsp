

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>


<%

String fname=request.getParameter("fname");                                
    
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	while(ss==null){
	Statement st1 = con1.createStatement();
	String sss1 = "select * from request where status!='request' && filename='"+fname+"' ";
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next())
	{
		ss="finish";
		System.out.println("waiting......................");
	}
System.out.println("waiting");
	Thread.sleep(7000);
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>

<%

response.sendRedirect("upload4.jsp");


%>




