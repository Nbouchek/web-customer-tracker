<%--
  Created by IntelliJ IDEA.
  User: sanab
  Date: 10/9/2019
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Customers</title>
    <%-- reference our style sheet--%>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM - Relationship Manager</h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <%-- put new button: Add Customer --%>
        <input type="button" value="Add Customer"
               onclick="window.location.href='showFormForAdd'; return false"
               class="add-button"
        />

        <%-- add our html table here --%>
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
            <%--  loop over and print out customers --%>
            <c:forEach var="tempCustomer" items="${customers}">
                <%-- construct an "update" link with customer id --%>
                <c:url var="updatelink" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${tempCustomer.id}"></c:param>
                </c:url>
                <tr>
                    <td>${tempCustomer.firstName}</td>
                    <td>${tempCustomer.lastName}</td>
                    <td>${tempCustomer.email}</td>
                    <td>${tempCustomer.email}</td>
                    <td>
                        <%--display the update link --%>
                        <a href="${updatelink}">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
