
<%@ page  import="java.sql.*" import="databaseconnection.*,CT.*" %>
<%
String a = request.getParameter("email");
String r= request.getParameter("role");
String pwd=null,u=null,test2=null;


Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();



try
{


	
	String sss1 = "select * from "+r+" where email='"+a+"' ";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{
		pwd=rs1.getString("password");


String sub="::: Forgot Password:::";
String body="<font color=#ef4818><b>Hello,<br> Your password is: <h4><font  color=#999966>"+pwd+"</font></h4></font>";
body=body+"</table><br><br><hr>Thanks & regard<br>Govt schemes</b>";

mail.mailsend(a,sub,body);
response.sendRedirect("index.jsp?msg2=succ");

		}
		else{
		response.sendRedirect("forgot.jsp?message=fail");

	}


	
}
catch(Exception e1)
{
	e1.printStackTrace();
out.println(e1);
}
		
%>