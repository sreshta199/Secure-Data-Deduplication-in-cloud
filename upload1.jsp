<%@ include file="uheader.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,CT.*"%>
<%@ page import="java.sql.*"%>

<script>  
function f1Submit() {  

alert('Auditing Message sent to Cloud Server');  
alert('Wait until get Auditing Proof');  
document.f1.action="req1.jsp";  
document.f1.submit(); 
}

</script>
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
String filedata=new String(r1.getBytes(2));

hashcode=SHA.hashCode(filedata); 


%>
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub"></h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">File upload</h3>
			</div>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" name="f1"  action="upload2.jsp" method="post" id="demoForm">
               
                    <div class="form-group">
						<label>File Name</label>
						<input type="text" class="form-control"name="fname"value=<%=r1.getString(1)%>  placeholder="" required="">
                         
					</div>
					 <div class="form-group">
						<label>HashCode</label>
						<textarea  placeholder=" " class="form-control" name="hashcode"  required type="text" cols="60"
						rows="5" required=""><%=hashcode%></textarea>
                         
					</div>
     
	
	                      <button type="submit" class="btn submit mt-4">Duplication Checking</button>
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
	