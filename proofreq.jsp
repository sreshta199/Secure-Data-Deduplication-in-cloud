<%@include file="cheader.jsp"%>

<%@ page import="java.sql.*,databaseconnection.*"%>

	<!-- page details -->
	<div class="breadcrumb-agile py-1">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item">
				<a href="">Proofverification RequestList</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"></li>
		</ol>
	</div>
	<!-- //page details -->
	<br><br><br>
<table cellspacing="20" border="2" cellpadding="10" align="center">
<tr><th width="20%">User Id</th><th width="20%">Challenge Value</th><th width="20%">Verification</th></tr>

<%
              String message=request.getParameter("msg");
             if(message!=null){

			  out.println("<script type=text/javascript>alert('Valid Proof..!'); </script>");
                   }


if(request.getParameter("msg1")!=null)
                                                 {

			  out.println("<script type=text/javascript>alert('Invalid Proof'); </script>");
                   }

                 %>


<%
try{
  Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select *from verify where status='request'");
while(r.next()){%>
<tr height="10"><td><strong><%=r.getString("uid")%></td><td><strong><%=r.getString("chal")%> </td>

<td><a href="verify.jsp?uid=<%=r.getString("uid")%>&chal=<%=r.getString("chal")%>"><font size="" color="#3366ff">Verify</font></a></td></tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</table>

<br><br><br><br><br>
<%@include file="footer.jsp"%> 