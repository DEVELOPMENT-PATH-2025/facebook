<%@ page import="java.util.*, com.library.model.Book" %>
<html>
<head>
    <title>Return Book</title>
</head>
<body>
    <h2>Return Book</h2>
    <form action="ReturnServlet" method="post">
        <input type="text" name="bookId" placeholder="Enter Book ID">
        <input type="submit" value="Return">
    </form>

    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
        <p><b><%= message %></b></p>
    <%
        }
    %>
</body>
</html>