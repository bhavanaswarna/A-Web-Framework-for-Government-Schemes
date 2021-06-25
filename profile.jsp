
<% String sub="User Profile";%>
<%@ include file="uheader.jsp"%>
</head>
<body>

<br>
<center>
			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       

												if(request.getParameter("msg")!=null )
                                                       {
                                                               out.println("<script>alert('Profile Updated Successfully..!')</script>");
                                                       }

													   %>
												
                                               
                  </b></font></td>
              </tr>

 </table> 
<h2>User Profile</h3></h2>


<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

ResultSet rst=st1.executeQuery("select *from users where email='"+session.getAttribute("usersemail")+"' ");

if(rst.next()){
%>
<center>
 <form action="profile2.jsp" method="post"    >

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#006666><strong>First Name</strong></font><br>
                <input class="form-control"  type="text" name="name" id = "name" value=<%=rst.getString("name")%> style="width: 250px;" required></td>
				<td><font size="+1" color=#006666><strong>Last Name</strong></font><br>
                <input class="form-control"  type="text" name="lname" id = "lname" value=<%=rst.getString("lname")%> style="width: 250px;" required></td>	
              </tr>
			  </TABLE>

             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#006666><strong>Age</strong></font><br>
                <input class="form-control"  type="number" name="age" value=<%=rst.getString("age")%> id = "dob"  min="5" max="70" style="width: 250px;" required></td>
				<td><br><font size="+1" color=#006666><strong>Gender</strong></font>

				
				<select name="gen"  class="form-control"  style="width: 250px;" > 
				<% if (rst.getString("gender").equals("Male")){%>
					<option value="Male" selected>Male
					<option value="Female">Female
					<option value="Others">Others
				<%}else if(rst.getString("gender").equals("Female")){%>
				<option value="Female" selected>Female
					<option value="Male">Male
					<option value="Others">Others
				<%}else{%>
				<option value="Others" selected>Others
					<option value="Female">Female
					<option value="Male">Male
					
				
				<%}%>
				</select>


              </tr>


			  </TABLE>

			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Address</strong></font>
				<br>
				<input class="form-control"  type="text" name="addr" value=<%=rst.getString("address")%> id = "addr"  style="width: 510px;"	required >
              </tr>
              <tr> 
               </table>


				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Telephone</strong></font>
				<br>
				<input class="form-control"  type="tel" value=<%=rst.getString("phone")%>  pattern="[0-9]{10,10}" required name="tele" style="width: 250px;"	>
				<td>
				<font size="+1"color=#006666><strong>Email Id</strong></font>
				<br>
				<input class="form-control"  type="email" name="email" id="email" value=<%=rst.getString("email")%> readonly style="width: 250px;"	 required>
              </tr>
               </table>


		  


			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input class="form-control"  type="Submit" Value="Next" id = "register" name = "register" >
				
				<td>
				
				
			
              </tr>
               </table>
			   <center>
 
 </form> 
<%}%>
<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>