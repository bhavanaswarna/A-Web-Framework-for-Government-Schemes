<% String sub="View Scheme";%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="aheader.jsp"%>
	               
<%

if(request.getParameter("msg")!=null)
	{
out.println("<script>alert('Scheme Name already exist..!')</script>");
}
if(request.getParameter("msg2")!=null)
	{
out.println("<script>alert('Scheme Details Updated Successfully..!')</script>");
}
%>
			<%  
			
			String schemeid=request.getParameter("schemeid");
			
			Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
    String qry="select *from schemes where schemeid="+schemeid+" ";
		ResultSet rs =st.executeQuery(qry);
		
	if(rs.next())
			%>		


<H1>Scheme Details</font></h1>
<br><br>
<form method="post" action="updateschemes.jsp" >
	<table  align="center" id="tab">

	<tr><td>Scheme Name<br><textarea name="sname"  cols="100" ><%=rs.getString(2)%></textarea>
	<tr><td>Scheme Description<br>
		<textarea name="des" rows="7" cols="100" ><%=rs.getString(3)%></textarea>
	<tr><td>Documents to Carry<br>
	<textarea name="docs" rows="7" cols="100" ><%=rs.getString(4)%></textarea>
	<tr><td>Benifits<br>
	<textarea name="benifits" rows="7" cols="100" ><%=rs.getString(5)%></textarea>
	  <input class="form-control"  type="hidden" name="schemeid" value=<%=schemeid%> id = "name"  style="width: 250px;" required></td>
	
	<tr><td>Link<br>

			<input type="text" name="link" value="<%=rs.getString(6)%>" required style="width:470px">
</tr>
	<tr><td><input  class="form-control" type="submit"  value="Update" id="button2"/>
</table><br><br><br>
			<center><a href="schemeeligibilty.jsp?schemeid=<%=schemeid%>"> <h3><font size="" color="ff3366">View Eligibilities</font></center>

</form>


<%@ include file="footer.jsp"%>
