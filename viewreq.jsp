<%@include file="kheader.jsp"%>

<%@ page import="java.sql.*,databaseconnection.*"%>

	<!-- page details -->
	<div class="breadcrumb-agile py-1">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item">
				<a href="">Key RequestList</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page"></li>
		</ol>
	</div>
	<!-- //page details -->
	<br><br><br>
<table cellspacing="20" border="2" cellpadding="10" align="center">
<tr><th width="20%">Filename</th><th width="20%">Hashcode</th><th width="20%">Generate</th></tr>
<%
if(request.getParameter("key")!=null){
	  out.println("<script>alert(' Convergetn Key( CK ) is generated Successfully and Sent to User')</script>");
}
%>


<%
try{
  Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select *from temp");
while(r.next()){%>
<tr height="10"><td><strong><%=r.getString("filename")%></td><td><strong><%=r.getString("hashcode")%> </td>

<td><a href="generateCK.jsp?fnm=<%=r.getString("filename")%>&hashcode=<%=r.getString("hashcode")%>"><font size="" color="#3366ff">CKGen</font></a></td></tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</table>

<br><br><br><br><br>
<%@include file="footer.jsp"%> 