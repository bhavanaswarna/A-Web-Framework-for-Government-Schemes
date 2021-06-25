<% String sub="View Govt.Schemes";%>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>

<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>     

<% if(request.getParameter("msg")!=null)
	{
out.println("<script>alert('Scheme Name already exist..!')</script>");
}
if(request.getParameter("msg2")!=null){
out.println("<script>alert('New Scheme Added Successfully ..!')</script>");
}
%>
					

<H1>View Schemes</font></h1>
<br>
 <table align="center" border=2>
    
            <tr> 
              <th >Scheme ID</th>
			   <th>Scheme Name</th>
              <th>Check Eligibility</th>

            </tr>
            <%
		
			


ResultSet rs=null;

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
    String qry="select *from schemes";
		rs =st.executeQuery(qry);
		
	while(rs.next())
	{	
%>
            <tr> 
              <td > <%=rs.getString(1)%></td>
			   <td > <a href="usr_schemedetails.jsp?schemeid=<%=rs.getString(1)%>"><%=rs.getString(2)%> </td>
              <td align="center"><a href="verification.jsp?schemeid=<%=rs.getString(1)%>">Verify</a></td>
            </tr>
            <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1);

	   }
 %>
          </table>
	

<%@ include file="footer.jsp"%>
