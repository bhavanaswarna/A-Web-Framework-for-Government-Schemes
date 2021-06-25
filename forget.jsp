<% String sub="User Home";%>
<%@ include file="uheader.jsp"%>
                  <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Invalid Email Address.. </font><br></h3>");
                                                       }
													  %>
<form method="post" action="forget2.jsp">
					
	<br><br>
 <h3><font size="" color="" >Forgot Password</font></h2>
	<table>
	<tr>
		<td>
		<input type="text" name="email" placeholder="Enter your userid">
		</td>
	</tr>
	<tr>
		<td>
				<select name="role" required="" >
							<option value="" selected>Select your Role

								<option value="users">User

							</select>
	<tr>
		<td><input type="submit" value="Send Email">
		</tr>
	</table>


				</form>				
<br><br><br><br><br><br>
<%@ include file="footer.jsp"%>



