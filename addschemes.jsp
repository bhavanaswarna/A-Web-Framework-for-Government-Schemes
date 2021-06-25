<% String sub="Add Scheme";%>
<%@ include file="aheader.jsp"%>
	               

<% if(request.getParameter("msg")!=null)
	{
out.println("<script>alert('Scheme Name already exist..!')</script>");
}
if(request.getParameter("msg2")!=null){
out.println("<script>alert('New Scheme Added Successfully ..!')</script>");
}
%>
					

<form method="post" action="addschemes2.jsp" >
<H1>Add Scheme</font></h1>
<br><br>

	<table  align="center" id="tab">

	<tr><td>Scheme Name<br><input type="text" name="schemenm" required style="width:270px;">
	<tr><td>Scheme Description<br>
		<textarea name="des" rows="7" cols="100" required></textarea>
	<tr><td>Documents to Carry<br>
	<textarea name="docs" rows="7" cols="100" required></textarea>
	<tr><td>Benifits<br>
	<textarea name="benifits" rows="7" cols="100" required></textarea>
	
	<tr><td>Link<br><input type="text" name="link" required style="width:270px;">


			<tr><td><input  class="form-control" type="submit"  value="Next" id="button2"/>


</tr>
</table>

<%@ include file="footer.jsp"%>
