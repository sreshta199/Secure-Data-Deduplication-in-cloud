<%@ include file="uheader.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,CT.*"%>
<%@ page import="java.sql.*"%>


<%!String  hashcode = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null;
int i=0;
%>
 <% 
	

try{
	 unm=(String)session.getAttribute("unm");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();


ResultSet r1=st1.executeQuery("select  *from temp ");
if(r1.next())
	{
%>
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub"></h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">File upload</h3>
			</div>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" name="f1"  action="Encryption.jsp" method="post" id="demoForm">
               
                    <div class="form-group">
						<label>File Name</label>
						<input type="text" class="form-control"name="fname"value=<%=r1.getString(1)%>  placeholder="" required="">
                         
					</div>

					 <div class="form-group">
						<label>File Data</label>
						<textarea  placeholder=" " class="form-control" name=""  readonly required type="text" cols="60"
						rows="5" required=""><%=r1.getBytes(2)%></textarea>
                         
					</div>

					 <div class="form-group">
						<label>Hashcode</label>
						<input type="text" class="form-control" name="hashcode" readonly value=<%=r1.getString(3)%>  placeholder="" required="">
                         
					</div>

						 <div class="form-group">
						<label>Convergent Key</label>
						<input type="text" class="form-control"name="ck" readonly value=<%=r1.getString(4)%>  placeholder="" required="">
                         
					</div>
     
	
	                      <button type="submit" class="btn submit mt-4">Encryption</button>
						</form>
			      </div>
		</div>
	</section>
                  

              <%
			  
	}
			  
			  }catch(Exception e11)
{
e11.printStackTrace();
}
%>        
                      
						

		<br><br><br>
		
	<%@ include file="footer.jsp"%>
	