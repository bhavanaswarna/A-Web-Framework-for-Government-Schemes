
<% String sub="User Home";%>
<%@ include file="uheader.jsp"%>
                  <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Location Updated.. </font><br></h3>");
                                                       }
													  %>

	<br><br>
 <h3><font size="" color="" >Welcome <%=session.getAttribute("usersname")%>..</font></h2>
<br><br><br><br><br><br>
<%@ include file="footer.jsp"%>