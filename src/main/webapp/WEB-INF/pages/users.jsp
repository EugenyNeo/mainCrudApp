<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page session="false" %>

<html>
<head>
    <title>Users</title>

   <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>

<h1>User list</h1>

<a href="../../index.jsp">Return to Main Menu</a>
<br>
<br>


<h1>User list</h1>


<c:if test="${!empty listUsers}">
    <table class="tg">
    <tr>
        <th width="80">id</th>
        <th width="120">personId</th>
        <th width="120">firstName</th>
        <th width="120">lastName</th>
        <th width="120">dateOfBirth</th>
        <th width="120">familyStatus</th>
        <th width="120">education</th>
        <th width="60">edit</th>
        <th width="60">delete</th>
    </tr>
    <c:forEach items="${listUsers}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.personId}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.dateOfBirth}</td>
            <td>${user.familyStatus}</td>
            <td>${user.education}</td>
            <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
            <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</c:if>

<h1>Add a User</h1>

<c:url var="addAction"  value="/users/add">

<form:form action="${addAction}" commandName="user">
    <table>
        <c:if test="${!empty user.personId}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="personId">
                    <spring:message text="personId"/>
                </form:label>
            </td>
            <td>
                <form:input path="personId"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="firstName">
                    <spring:message text="firstName"/>
                </form:label>
            </td>
            <td>
                <form:input path="firstName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lastName">
                    <spring:message text="lastName"/>
                </form:label>
            </td>
            <td>
                <form:input path="lastName"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="dateOfBirth">
                    <spring:message text="dateOfBirth"/>
                </form:label>
            </td>
            <td>
                <form:input path="dateOfBirth"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="familyStatus">
                    <spring:message text="familyStatus"/>
                </form:label>
            </td>
            <td>
                <form:input path="familyStatus"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="education">
                    <spring:message text="education"/>
                </form:label>
            </td>
            <td>
                <form:input path="education"/>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <c:if test="${!empty user.personId}">
                    <input type="submit"
                           value="<spring:message text="Edit User"/>"/>
                </c:if>
                <c:if test="${empty book.personId}">
                    <input type="submit"
                           value="<spring:message text="Add User"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>


</body>


</html>