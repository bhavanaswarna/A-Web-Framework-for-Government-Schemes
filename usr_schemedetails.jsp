<% String sub="View Govt.Schemes";%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="uheader.jsp"%>
	               

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

	<table  align="center" id="tab">

	<tr><td>Scheme Name<br><textarea name="des"  cols="100" readonly><%=rs.getString(2)%></textarea>
	<tr><td>Scheme Description<br>
		<textarea name="des" rows="7" cols="100" readonly><%=rs.getString(3)%></textarea>
	<tr><td>Documents to Carry<br>
	<textarea name="docs" rows="7" cols="100" readonly><%=rs.getString(4)%></textarea>
	<tr><td>Benifits<br>
	<textarea name="benifits" rows="7" cols="100" readonly><%=rs.getString(5)%></textarea>
	
	<tr><td>Link<br>

			<tr><td><a href=<%=rs.getString(6)%> target="_blank"><%=rs.getString(6)%><a>
</tr>
</table><br><br><br>
			<center><a href="usr_schemeeligibilty.jsp?schemeid=<%=schemeid%>"> <h3><font size="" color="ff3366">View Eligibilities</font></center>




<%@ include file="footer.jsp"%>
