
<% String sub="Add Scheme";%>
<%@ include file="aheader.jsp"%>
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
<h2>Eligibilities</h3></h2>
<center>
 <form action="addscheme4.jsp" method="post">

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">

			 <tr> 
                <td><br><font size="+1" color=#006666><strong>Age</strong></font>

				
				<select name="age" required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="All">All
					<option value="below_25">Below 25
					<option value="below_35">Below 35
					<option value="above_60">Above 60
				</select>
				
              </tr>
			   <tr> 
                <td><br><font size="+1" color=#006666><strong>Gender</strong></font>

				
				<select name="gen"  class="form-control"  style="width: 250px;" > 
						<option value=""> --- Select ---
					<option value="All">All
					<option value="Male"> Male
					<option value="Female">Female
										<option value="Others">Others
				</select>
				
              </tr>
              <tr> 
                <td><br><font size="+1" color=#006666><strong>Cast</strong></font>

				<select name="cast" required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="SC">SC
					<option value="ST">ST
					<option value="EBC">EBC
					<option value="BC">BC
					<option value="OC">OC
				</select>

				<input type="hidden" name="schemeid" value=<%=request.getParameter("schemeid")%>>
				
              </tr>
			   <tr> 
                <td><font size="+1" color=#006666><strong>
Disabled Welfare category</strong></font>
				<select name="dwc"  required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="Yes">Yes
					<option value="No">NO
						<option value="All">All
						</select>
              </tr>

			  </TABLE>

             
			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Annual Income</strong></font>
				<br><select name="income"  required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="100000">Below 1 Lakh
					<option value="200000">Below 2 Lakhs
					<option value="300000">Below 3 Lakhs
						</select>
				
              </tr>
              <tr> 
               </table>

			   <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Qualification</strong></font>
				<br><select name="qual"  required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="10th">10th class
					<option value="intermediate">Intermediate
					<option value="degree">Degree
					<option value="PG">PG
					<option value="nonschool">Non-school
					<option value="All">All

						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>State</strong></font>
				<br><select name="state"  required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="TS">Telangana
					<option value="AP">AndhraPradesh
					<option value="TN">TamilNadu
					<option value="All">All
						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Locality</strong></font>
				<br><select name="loc"  required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="rural">Rural
					<option value="urban">Urban
						<option value="All">All
						</select>
				
              </tr>
              <tr> 
               </table>

			    <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Profession</strong></font>
				<br><select name="prof"  required class="form-control"  style="width: 250px;" > 
					<option value=""> --- Select ---
					<option value="student">Student
					<option value="employment">Employment
					<option value="nonemployment">Non-Employment
					<option value="dailywages">Daily Wages
					<option value="All">All

						</select>
				
              </tr>
              <tr> 
               </table>
				
			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input class="form-control"  type="submit" Value="Submit" id = "register" name = "register" >
				
				<td>
				
				<input class="form-control"  type="reset" value="   Reset   ">
              </tr>
               </table>
			   <center>
 
 </form> 

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>