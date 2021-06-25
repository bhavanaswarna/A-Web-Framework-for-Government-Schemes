<% String sub="View Govt.Schemes";%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="uheader.jsp"%>
	               

<%! boolean fage,fincome,fgender,fcast,fdisabled,fstate,flocal,fqual,fprof;
String age22[];

%>
			<%  
			String age3="",income3="";
			
			String schemeid=request.getParameter("schemeid");
			System.out.println(schemeid);
			try{
			Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	Statement st2 = con.createStatement();	
	Statement st3 = con.createStatement();
	Statement st4 = con.createStatement();
	Statement st5 = con.createStatement();
			String usr_email=(String)session.getAttribute("usersemail");
						System.out.println(usr_email);
						String q="select *from eligibilty where emailid='"+usr_email+"'";
										System.out.println(q);

	ResultSet rs2 =st2.executeQuery("select *from eligibilty where emailid='"+usr_email+"'");
		
if(rs2.next()){
System.out.println("bb");
String age=rs2.getString(2);
int age1=Integer.parseInt(age);
String gender=rs2.getString(3);
String cast=rs2.getString(4);
String disabled=rs2.getString(5);
String income=rs2.getString(6);
String qual=rs2.getString(7);
String state=rs2.getString(8);
String local=rs2.getString(9);
String prof=rs2.getString(10);



    String qry="select *from scheme_eligibilty where schemeid="+schemeid+" ";

		ResultSet rs =st.executeQuery(qry);
		
	if(rs.next()){

/// AGE 
String age2=rs.getString(2);
String gender2=rs.getString(3);
String cast2=rs.getString(4);
String disabled2=rs.getString(5);
String qual2=rs.getString(7);
String state2=rs.getString(8);
String local2=rs.getString(9);
String prof2=rs.getString(10);
String income2=rs.getString(6);


if(age2.equals("All")){
	fage=true;
}
else{
		 age22=age2.split("_");
			if(age22[0].equals("below")){

				if(age1<=Integer.parseInt(age22[1])){
						fage=true;
					}
							else{
								fage=false;
								}
}
else{

if(age1>=Integer.parseInt(age22[1])){
						fage=true;
					}
							else{
								fage=false;
								}

}

}
//--------------------------------------

// INCOME  

if(Integer.parseInt(income)<=Integer.parseInt(income2)){
	fincome=true;
}
else{
	fincome=false;
}
//----------------

//Gender

if(gender2.equals("All")){
	fgender=true;
}else{

if(gender.equals(gender2)){
	fgender=true;
}else{
	fgender=false;

}

}
//-------------------- Cast----


if(cast2.equals("All")){
	fcast=true;
}else{

if(cast.equals(cast2)){
	fcast=true;
}else{
	fcast=false;

}

}

//-------------------- Disabled----


if(disabled2.equals("All")){
	fdisabled=true;
}else{

if(disabled.equals(disabled2)){
	fdisabled=true;
}else{
	fdisabled=false;

}
}


//-------------------- Qualification----

if(qual2.equals("All")){
	fqual=true;
}else{

if(qual.equals(qual2)){
	fqual=true;
}else{
	fqual=false;

}
}

//-------------------- State----

if(state2.equals("All")){
	fstate=true;
}else{

if(state.equals(state2)){
	fstate=true;
}else{
	fstate=false;

}
}



//-------------------- Localitity----

if(local2.equals("All")){
	flocal=true;
}else{

if(local.equals(local2)){
	flocal=true;
}else{
	flocal=false;
}
}


//-------------------- Localitity----

if(prof2.equals("All")){
	fprof=true;
}else{

if(prof.equals(prof2)){
	fprof=true;
}else{
	fprof=false;

}
}

System.out.println(fage);
System.out.println(fincome);

System.out.println(fage&&fincome&&fgender&&fcast&&fdisabled&&fstate&&flocal&&fprof);
if(fage&&fincome&&fgender&&fcast&&fdisabled&&fstate&&flocal&&fprof){

ResultSet rst=st4.executeQuery("select *from notifications where schemeid='"+schemeid+"' and email='"+usr_email+"' ");
if(!rst.next()){
st5.executeUpdate("insert into notifications values('"+schemeid+"','"+usr_email+"')");

}


%>
 <%
 Statement st55 = con.createStatement();
 String qry5="select *from schemes where schemeid="+schemeid+" ";

		ResultSet rs55 =st55.executeQuery(qry5);
		
	if(rs55.next()){
		%>
		<h2><font color="green"><center>You are Eligible</center></font></h2>
		<center><font color="blue"><a href=<%=rs55.getString("link")%> target="_blank"</font><%=rs55.getString("link")%></a></h2>


<% }

	}
else{%>

<h2><font color="red"><center>You are not Eligible</center></font></h2>

<%}



	}
	
}
	
	
	
	
	}
	catch(Exception e){
e.printStackTrace();

	}%>		






<%@ include file="footer.jsp"%>
