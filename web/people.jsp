<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2018/4/12
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body bgcolor="aqua">
<font size="3">
    <%! int count;
        StringBuffer personList;
        public void judge(){
            if(count==0){
                personList =new StringBuffer();

            }
        }
        public void addPerson(String p){
            if(count==0){
                personList.append(p);
            }else{
                personList.append(","+p);
            }
            count++;
        }
    %>
    <% String name = request.getParameter("name");
        byte bb[] =name.getBytes("iso-8859-1");
        name=new String(bb);
        if(name.length()==0||name.length()>10){
    %>  <jsp:forward page="inputName.jsp"/>
        <%}
        judge();
        addPerson(name);
        %>
    <br>目前共有 <%=count%>人浏览了网页，他们是：
    <br> <%=personList%>


</font>

</body>
</html>
