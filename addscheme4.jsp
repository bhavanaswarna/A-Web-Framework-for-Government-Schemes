

<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String age,gen,cast,dwc, income, qual, state, loc, prof,schemeid;
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
schemeid=request.getParameter("schemeid");

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();


int q= st.executeUpdate("insert into scheme_eligibilty values('"+schemeid+"','"+age+"','"+gen+"','"+cast+"','"+dwc+"','"+income+"','"+qual+"','"+state+"','"+loc+"','"+prof+"')");

if(q>0)
{

response.sendRedirect("addschemes.jsp?msg2=added");

}


}
catch(Exception e)
{
e.printStackTrace();
	}
%>
