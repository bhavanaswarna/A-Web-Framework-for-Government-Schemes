

<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String schemenm, des, benifits, docs, link;
	int i=0;
%>
<%
schemenm=request.getParameter("sname");
des=request.getParameter("des");
docs=request.getParameter("docs");

benifits=request.getParameter("benifits");
link=request.getParameter("link");

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
			String schemeid=request.getParameter("schemeid");

ResultSet rst=st1.executeQuery("select *from schemes where schemename='"+schemenm+"' ");

if(rst.next()){

response.sendRedirect("schemedetails.jsp?msg=duplicate&schemeid="+schemeid+" ");
}
else{
	System.out.println(i);
	PreparedStatement pst=con.prepareStatement("update schemes set schemename=?,schedesc=?,documents=?,benifits=?,link=? where  schemeid="+schemeid+" ");

pst.setString(1,schemenm);
pst.setString(2,des);
pst.setString(3,docs);
pst.setString(4,benifits);
pst.setString(5,link);
int q= pst.executeUpdate();


if(q>0)
{

response.sendRedirect("schemedetails.jsp?msg2=udated&schemeid="+schemeid+"");

}


}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
