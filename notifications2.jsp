

<%@ page  import="java.sql.*" import="databaseconnection.*,CT.*" %>



<%! String email,schemeid,msg;
	int i=0;
%>
<%

schemeid=request.getParameter("schemeid");

msg=request.getParameter("msg");

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
 String qry="select *from schemes where schemeid="+schemeid+" ";
		ResultSet rs =st.executeQuery(qry);
	if(rs.next()){

String schemenm=rs.getString(2);

		String qry2="select *from notifications where schemeid="+schemeid+" ";
		System.out.println(qry2);
		ResultSet rs2 =st1.executeQuery(qry2);
	while(rs2.next()){
	email=rs2.getString(2);
		System.out.println(email);

	mail.mailsend(email,schemenm,msg);
}

response.sendRedirect("viewschemes.jsp?msg=sent");

}


}
catch(Exception e)
{
e.printStackTrace();
	}
%>
