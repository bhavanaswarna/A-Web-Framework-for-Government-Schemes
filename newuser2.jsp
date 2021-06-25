

<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,intr,blood;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from user");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");

tele=request.getParameter("tele");
blood=request.getParameter("blood");
 email=request.getParameter("email");

String  age=request.getParameter("age");
String  gen=request.getParameter("gen");

pwd=request.getParameter("pwd");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
un="user"+i;

ResultSet rst=st1.executeQuery("select *from users where email='"+email+"' ");

if(rst.next()){

response.sendRedirect("newuser.jsp?msg=duplicate");
}
else{
int q= st.executeUpdate("insert into users(name,lname,age, gender,address,phone,email,password) values('"+name+"','"+lname+"','"+age+"','"+gen+"','"+addr+"','"+tele+"','"+email+"', '"+pwd+"')");


if(q>0)
{

response.sendRedirect("newuser3.jsp?email="+email+"&age="+age+"&gen="+gen+" ");

}


}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
