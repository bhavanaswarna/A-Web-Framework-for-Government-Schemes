

<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,intr,blood;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();



name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");

tele=request.getParameter("tele");

 email=request.getParameter("email");

String  age=request.getParameter("age");
String  gen=request.getParameter("gen");


//System.out.println(pwd);
%>
<%


Statement st=con.createStatement();
Statement st1=con.createStatement();

int q= st.executeUpdate("update users set name='"+name+"',lname='"+lname+"',age='"+age+"',gender='"+gen+"',address='"+addr+"',phone='"+tele+"' where email='"+email+"' ");


if(q>0)
{

response.sendRedirect("profile3.jsp?email="+email+"&age="+age+"&gen="+gen+" ");

}



}
catch(Exception e)
{
e.printStackTrace();
	}
%>
