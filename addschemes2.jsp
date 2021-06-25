

<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String schemenm, des, benifits, docs, link;
	int i=0;
%>
<%
schemenm=request.getParameter("schemenm");
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

ResultSet rs=st.executeQuery("select max(schemeid) from schemes");
if(rs.next())
{
	i=rs.getInt(1);
	i=i+1;
}

ResultSet rst=st1.executeQuery("select *from schemes where schemename='"+schemenm+"' ");

if(rst.next()){

response.sendRedirect("addschemes.jsp?msg=duplicate");
}
else{
	System.out.println(i);
	PreparedStatement pst=con.prepareStatement("insert into schemes(schemeid,schemename,schedesc,documents,benifits,link)values("+i+",?,?,?,?,?)");

pst.setString(1,schemenm);
pst.setString(2,des);
pst.setString(3,docs);
pst.setString(4,benifits);
pst.setString(5,link);
int q= pst.executeUpdate();


if(q>0)
{

response.sendRedirect("addschemes3.jsp?schemeid="+i+" ");

}


}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
