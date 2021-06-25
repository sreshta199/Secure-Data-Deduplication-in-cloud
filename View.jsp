  <%@ include file="uheader.jsp"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,sk,aeskey;
int i=0;byte data[]=null;
Statement st1;
%>
 <%
		

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
 st1=con.createStatement();
fid=request.getParameter("id");
System.out.println("fid="+fid);
unm=(String)session.getAttribute("unm");

ResultSet r1=st1.executeQuery("select *from cloud where fid='"+fid+"' ");
if(r1.next()){

%>
<br>
<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub"></h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">File Decrypting</h3>
			            </div>
				</div>  
                </div> 
				
                 
              
                    
                    <form name="f1" action="DecryptData.jsp" method="post" class="login-wrapper">
					<div class="form-group">
                              <label >File Id</label>
                            <input  placeholder="" name="fid"class="form-control" value=<%=fid%> type="text" required=""><input type="hidden" name="unm" value=<%=unm%>>
							
                        </div>	
						
                       	
						<div class="form-group">
                            <label >File Name</label>
                            <input  placeholder="  " name="fname"class="form-control" value=<%=r1.getString(2)%>  readonly type="text">
                        </div>	
							<div class="form-group">
                            <label>FileData</label>
                            <textarea  placeholder=" "  name="file"  class="form-control"required type="text" required=""><%=r1.getBytes(3)%></textarea>
                        	
						 	<div class="form-group">
                            <label >ConvergentKey</label>
                           <input  name="ck" class="form-control" type="text" readonly value=<%=r1.getString("signcode")%>>
						   <label ><span></span></label>
                        </div>
						<div class="form-group">
   
                        <input type="submit" value="Decrypt">
                       
                     </form>
			</div>
		</div>
	</section>
		<%}%>
		<br>
<%@ include file="footer.jsp"%>