<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
--%>
<%@ page session="false" %>

<html>
<head>
    <title>BookData</title>

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
<h1>Book Details</h1>

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
    <tr>
        <td>${user.id}</td>
        <td>${user.personId}</td>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.dateOfBirth}</td>
        <td>${user.familyStatus}</td>
        <td>${user.education}</td>
        <td><a href="<c:url value='/edit/${user.id}'/>">">Edit</a></td>
        <td><a href="<c:url value='/remove/${user.id}'/>">">Delete</a></td>
    </tr>
</table>
</body>
</html>


