<%@ include file="uheader.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,CT.*"%>
<%@ page import="java.sql.*"%>

<script>  
function f1Submit() {  

alert('Request sent to Key Server');  
alert('Wait until get the Keys');  
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


	  out.println("<script>alert('No, duplication found')</script>");
String hashcode=request.getParameter("hashcode");

String fname=request.getParameter("fname");



%>
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub"></h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">File upload</h3>
			</div>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
				<form class="login-wrapper" name="f1"   method="post" id="demoForm">
               
                    <div class="form-group">
						<label>File Name</label>
						<input type="text" class="form-control"name="fname"value=<%=fname%>  placeholder="" required="">
                         
					</div>
					 <div class="form-group">
						<label>HashCode</label>
						<textarea  placeholder=" " class="form-control" name="hashcode"  required type="text" cols="60"
						rows="5" required=""><%=hashcode%></textarea>
                         
					</div>
     
	
	                      <button type="submit"value="GetKey"  onclick="f1Submit()" class="btn submit mt-4">Send</button>
						</form>
			      </div>
		</div>
	</section>
                  

              <%
			  
	
			  
			  }catch(Exception e11)
{
e11.printStackTrace();
}
%>        
                      
						

		<br><br><br>
		
	<%@ include file="footer.jsp"%>
	