<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String r= request.getParameter("role");
String name=null,u=null,test2=null;


Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();



try
{


	
	String sss1 = "select * from "+r+" where email='"+a+"' && password='"+b+"'";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{
		name=rs1.getString("name");

		session.setAttribute(r+"name",rs1.getString("name"));
		session.setAttribute(r+"email",a);
		session.setAttribute("role",r);
		response.sendRedirect(r+"_home.jsp");

		}
		else{
		response.sendRedirect("index.jsp?message=fail");

	}


	
}
catch(Exception e1)
{
out.println(e1);
}


%>