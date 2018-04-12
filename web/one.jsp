<%@ page import="org.apache.jasper.tagplugins.jstl.core.Catch" %><%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/4/12
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head.txt"/>
</head>

<body bgcolor="#6495ed">
<form action="" method="get" name="name">
    请输入1~100之间的整数：<input type="text" name="number">
    <br><input type="submit" name="submit">
</form>
<% String num=request.getParameter("number");
    if(num==null)
        num="0";
        try{ int n=Integer.parseInt(num);
            if(n>1&&n<50){
                %>
                <jsp:forward page="two.jsp">
                    <jsp:param name="number" value="<%=n%>"/>
                </jsp:forward>
            <%
            }
            else if(n>50&&n<100){
                %>
                <jsp:forward page="three.jsp">
                    <jsp:param name="number" value="<%=n%>"/>
                </jsp:forward>
            <%
            }else if(n>100){
            %>
                <jsp:forward page="error.jsp">
                    <jsp:param name="mess" value="<%=n%>"/>
                </jsp:forward>
            <%
            }
        }catch (Exception e){
            %>
            <jsp:forward page="error.jsp">
                <jsp:param name="mess" value="<%=e.toString()%>"/>
            </jsp:forward>
        <%
        }

       %>

</body>
</html>