
<% String sub="User Signup";%>
<%@ include file="header.jsp"%>
</head>
<body>

<br>
<center>
			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='#669966' size=+2><blink>Registration Success ! <br>User Id: "+id+"</h3>");
                                                       }

												if(request.getParameter("msg")!=null )
                                                       {
                                                               out.println("<script>alert('Email Id already exists')</script>");
                                                       }

													   %>
												
                                               
                  </b></font></td>
              </tr>

 </table> 
<h2>User Signup Page</h3></h2>
<center>
 <form action="newuser2.jsp" method="post"    >

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#006666><strong>First Name</strong></font><br>
                <input class="form-control"  type="text" name="name" id = "name"  style="width: 250px;" required></td>
				<td><font size="+1" color=#006666><strong>Last Name</strong></font><br>
                <input class="form-control"  type="text" name="lname" id = "lname"  style="width: 250px;" required></td>	
              </tr>
			  </TABLE>

             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#006666><strong>Age</strong></font><br>
                <input class="form-control"  type="number" name="age" id = "dob"  min="5" max="70" style="width: 250px;" required></td>
				<td><br><font size="+1" color=#006666><strong>Gender</strong></font>

				
				<select name="gen"  class="form-control"  style="width: 250px;" > 
					<option value="Male" selected>Male
					<option value="Female">Female
										<option value="Others">Others
				</select>


              </tr>


			  </TABLE>

			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Address</strong></font>
				<br>
				<input class="form-control"  type="text" name="addr" id = "addr"  style="width: 510px;"	required >
              </tr>
              <tr> 
               </table>


				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Telephone</strong></font>
				<br>
				<input class="form-control"  type="tel" placeholder="+91"  pattern="[0-9]{10,10}" required name="tele" style="width: 250px;"	>
				<td>
				<font size="+1"color=#006666><strong>Email Id</strong></font>
				<br>
				<input class="form-control"  type="email" name="email" id="email" style="width: 250px;"	 required>
              </tr>
               </table>


		   	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Password</strong></font>
				<br>
				<input class="form-control"  type="password" name="pwd" id="pwd" style="width: 510px;"	required	 >
		


				             </tr>
               </table>


			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input class="form-control"  type="Submit" Value="Next" id = "register" name = "register" >
				
				<td>
				
				
				<input class="form-control"  type="reset" value="   Reset   ">
              </tr>
               </table>
			   <center>
 
 </form> 

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>