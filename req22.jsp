

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>


<%

String fid=request.getParameter("fid");      

String uid=request.getParameter("uid");  
    
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	while(ss==null){
	Statement st1 = con1.createStatement();
	String sss1 = "select * from request where status!='request' && filename='"+uid+"' ";
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

Statement st2 = con1.createStatement();
ResultSet rs2=st2.executeQuery("select *from verify where status='valid' && uid='"+uid+"'");
if(rs2.next()){
	response.sendRedirect("fileupload.jsp?fid="+fid+"");

}else{
response.sendRedirect("fileupload.jsp?sts=NotValid");
}



%>




