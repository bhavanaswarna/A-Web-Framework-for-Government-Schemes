

<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String age,gen,cast,dwc, income, qual, state, loc, prof,email;
	int i=0;
%>
<%

age=request.getParameter("age");
gen=request.getParameter("gen");
cast=request.getParameter("cast");

dwc=request.getParameter("dwc");
income=request.getParameter("income");
 qual=request.getParameter("qual");

  state=request.getParameter("state");
  loc=request.getParameter("loc");

prof=request.getParameter("prof");
email=request.getParameter("email");

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();


int q= st.executeUpdate("update eligibilty set age='"+age+"',gender='"+gen+"',cast='"+cast+"',disabled='"+dwc+"',income='"+income+"',qualification='"+qual+"',state='"+state+"',locality='"+loc+"',profession='"+prof+"' where emailid='"+email+"' ");

if(q>0)
{

response.sendRedirect("profile.jsp?msg=updated");

}


}
catch(Exception e)
{
e.printStackTrace();
	}
%>
