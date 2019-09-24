<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: min2208
  Date: 24/09/2019
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        Map<String, String> dic = new HashMap<>();
    %>
    <%

        PrintWriter writer=response.getWriter();
        dic.put("Dog","Con cho");
        dic.put("Cat","Con meo");
        dic.put("Dragon","Con rong");
        dic.put("Tiger","Con ho");

        String seach=request.getParameter("name");
        String result=dic.get(seach);

        if (result!=null){
            writer.print("Word: " + seach +"<br>");
            writer.print("Result: " + result);
        }else {
            writer.print("Result not found");
        }
    %>


</body>
</html>
