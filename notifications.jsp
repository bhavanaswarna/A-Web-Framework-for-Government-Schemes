<% String sub="Notifications";%>
<%@ include file="aheader.jsp"%>
	               

<% if(request.getParameter("msg")!=null)
	{
out.println("<script>alert('Scheme Name already exist..!')</script>");
}
if(request.getParameter("msg2")!=null){
out.println("<script>alert('New Scheme Added Successfully ..!')</script>");
}
%>
					

<form method="post" action="notifications2.jsp" >
<H1>Add Notification</font></h1>
<br><br>
		<% String schemeid=request.getParameter("schemeid");%>
	<table  align="center" id="tab">

	
	<tr><td>Message<br>
		<textarea name="msg" rows="7" cols="100" required></textarea>
		<input type="hidden" name="schemeid" value=<%=schemeid%>>
			<tr><td><input  class="form-control" type="submit"  value="Send" id="button2"/>
</tr>
</table>

<%@ include file="footer.jsp"%>
