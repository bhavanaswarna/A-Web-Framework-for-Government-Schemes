
<% String sub="View Govt.Schemes";%>
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>    

</head>
<body>

<br>
<center>
			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  								
                                               
                  </b></font></td>
              </tr>

 </table> 

<% ResultSet rs=null;


	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
    String qry="select *from scheme_eligibilty where schemeid="+request.getParameter("schemeid")+" ";
		rs =st.executeQuery(qry);
		
	if(rs.next())
	{%>	
<h2>Scheme Eligibilities</h3></h2>
<center>
 

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">

			 <tr> 
                <td><br><font size="+1" color=#006666><strong>Age</strong></font>
				  <input class="form-control"  type="text"  value=<%=rs.getString(2)%> style="width: 450px;" readonly></td>
				
              </tr>
			   <tr> 
                <td><br><font size="+1" color=#006666><strong>Gender</strong></font>

				  <input class="form-control"  type="text"  id = "dob" value=<%=rs.getString(3)%> style="width: 450px;" readonly></td>
              </tr>
              <tr> 
                <td><br><font size="+1" color=#006666><strong>Cast</strong></font>

				<input class="form-control"  type="text"  id = "dob" value=<%=rs.getString(4)%> style="width: 450px;" readonly></td>
              </tr>
			   <tr> 
                <td><br><font size="+1" color=#006666><strong>
Disabled Welfare category</strong></font>
				<input class="form-control"  type="text"  id = "dob" value=<%=rs.getString(5)%> style="width: 450px;" readonly></td>
              </tr>

			  </TABLE>

             
			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><br><font size="+1"color=#006666><strong>Annual Income</strong></font>
				<br>
				<input class="form-control"  type="text" id = "dob" value=<%=rs.getString(6)%> style="width: 450px;" readonly></td>
				
              </tr>
              <tr> 
               </table>

			   <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><br><font size="+1"color=#006666><strong>Qualification</strong></font>
				<br><input class="form-control"  type="text"  id = "dob" value=<%=rs.getString(7)%> style="width: 450px;" readonly></td>

						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><br><font size="+1"color=#006666><strong>State</strong></font>
				<br><input class="form-control"  type="text"  id = "dob" value=<%=rs.getString(8)%> style="width: 450px;" readonly></td>
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><br><font size="+1"color=#006666><strong>Locality</strong></font>
				<br><input class="form-control"  type="text" name="age" id = "dob" value=<%=rs.getString(9)%> style="width: 450px;" readonly></td>
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><br><font size="+1"color=#006666><strong>Profession</strong></font>
				<br><input class="form-control"  type="text" name="age" id = "dob" value=<%=rs.getString(10)%> style="width: 450px;" readonly></td>
				
              </tr>
              <tr> 
               </table>
				
			  <center>
 
<%}%>

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>