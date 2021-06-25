  <%@ include file="cheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <%! String Cpabe_enc="AES_ENCRYPT";%>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Attribute-Based Storage</title>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*,CT.*,it.unisa.dia.gas.jpbc.Element"%>
<%! int rno=0;
String s=null;String filedata=null;%>

<%!String  thisLine = null,uid;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,pkey=null;
int i=0;
byte data[]=null;
%>
<% 


Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

		 String uid=request.getParameter("uid");
		  String chal=request.getParameter("chal");



boolean sts=BloomFilter.validate(Double.parseDouble(chal));
System.out.println("stssss="+sts);

if(sts){
    st1.executeUpdate("update request  set status='finish' where filename='"+uid+"'");
	st1.executeUpdate("update verify set status='valid' where uid='"+uid+"'");
	response.sendRedirect("proofreq.jsp?msg=proved");
}else{

st1.executeUpdate("update request set status='finish' where filename='"+uid+"'");
	st1.executeUpdate("update verify set status='notvalid' where uid='"+uid+"'");
response.sendRedirect("proofreq.jsp?msg1=NotProved");
}
%>
	<%@ include file="footer.jsp"%>