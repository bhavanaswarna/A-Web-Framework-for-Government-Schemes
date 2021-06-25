
<% String sub="Profile";%>
<%@ include file="uheader.jsp"%>
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
<h2</h3></h2>
<center>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%


Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

ResultSet rst=st1.executeQuery("select *from eligibilty where emailid='"+session.getAttribute("usersemail")+"' ");

if(rst.next()){
	
 //String[] cast=new String[] {"SC","ST","EBC","BC","OC"}; //inline initialization  
//String[] dwc = {"Yes", "No"};  
//String[] income = {"Yes", "No"};  

%>
 <form action="profile4.jsp" method="post">

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><br><font size="+1" color=#006666><strong>Cast</strong></font>

				
				<select name="cast" required class="form-control"  style="width: 250px;" > 
					<option value="<%=rst.getString("cast")%>" selected><%=rst.getString("cast")%>
					<option value="SC">SC
					<option value="ST">ST
					<option value="EBC">EBC
					<option value="BC">BC
					<option value="OC">OC
				</select>

				<input type="hidden" name="age" value=<%=request.getParameter("age")%>>
				<input type="hidden" name="gen" value=<%=request.getParameter("gen")%>>
				<input type="hidden" name="email" value=<%=request.getParameter("email")%>>
              </tr>
			   <tr> 
                <td><font size="+1" color=#006666><strong>
Disabled Welfare category</strong></font>
				<select name="dwc"  required class="form-control"  style="width: 250px;" > 
				<option value="<%=rst.getString("disabled")%>" selected><%=rst.getString("disabled")%>
					<option value="Yes">Yes
					<option value="No">NO
						</select>
              </tr>

			  </TABLE>

             
			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Annual Income</strong></font>
				<br><select name="income"  required class="form-control"  style="width: 250px;" > 
				<option value="<%=rst.getString("income")%>" selected><%=rst.getString("income")%>
					<option value="100000">1 Lakh
					<option value="200000">2 Lakhs
					<option value="300000">3 Lakhs
						</select>
				
              </tr>
              <tr> 
               </table>

			   <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Qualification</strong></font>
				<br><select name="qual"  required class="form-control"  style="width: 250px;" > 
			<option value="<%=rst.getString("qualification")%>" selected><%=rst.getString("qualification")%>
					<option value="10th">10th class
					<option value="intermediate">Intermediate
					<option value="degree">Degree
					<option value="PG">PG
					<option value="nonschool">Non-school

						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>State</strong></font>
				<br><select name="state"  required class="form-control"  style="width: 250px;" > 
					<option value="<%=rst.getString("state")%>" selected><%=rst.getString("state")%>
					<option value="TS">Telangana
					<option value="AP">AndhraPradesh
					<option value="TN">TamilNadu
						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Locality</strong></font>
				<br><select name="loc"  required class="form-control"  style="width: 250px;" > 
		<option value="<%=rst.getString("locality")%>" selected><%=rst.getString("locality")%>
					<option value="rural">Rural
					<option value="urban">Urban
						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Profession</strong></font>
				<br><select name="prof"  required class="form-control"  style="width: 250px;" > 
						<option value="<%=rst.getString("profession")%>" selected><%=rst.getString("profession")%>
					<option value="student">Student
					<option value="employment">Employment
					<option value="nonemployment">Non-Employment
					<option value="dailywages">Daily Wages

						</select>
				
              </tr>
              <tr> 
               </table>
				
			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input class="form-control"  type="submit" Value="Update" id = "register" name = "register" >
				
				<td>
				
			
              </tr>
               </table>
			   <center>
 
 </form> 
<%}%>

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>