<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_Application_object
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/27
  Time(创建时间)： 18:44
  Description(描述)： JSP application 是 javax.servlet.ServletContext 的实例对象。在服务器部署应用和项目时，
  Web 容器仅创建一次 ServletContext 实例，也就是说 application 设置的任何属性和值可以用于整个应用（所有 JSP 页面）。
  可以将 application 对象看作 Web 应用的全局变量。一般用于保存应用程序的公用数据。
  方  法	说  明
Object getAttribute(String attributeName)	获取 attributeName（属性名称）对应的 object
void setAttribute(String attributeName, Object object)	设置 attributeName 对应的属性值
Enumeration getAttributeNames()	返回 application 对象中所有的 attributeName
void removeAttribute(String objectName)	删除 application 对象中指定 attributeName 的属性
String getServerInfo()	获取当前 Servlet 的版本信息
String getRealPath(String value)	获取指定文件的实际路径
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Integer count = (Integer) application.getAttribute("count");
    if (count == null)
    {
        count = 1;
    }
    else
    {
        count++;
    }
    application.setAttribute("count", count);
%>
<h2>
    您是第<%=count%>位访问的客户！
</h2>
</body>
</html>
