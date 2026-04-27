<%@ page import="java.util.*, com.library.model.Book" %>
<html>
<head>
    <title>Borrow Book</title>
</head>
<body>
    <h2>Borrow Book</h2>
    <form action="BorrowServlet" method="post">
        <input type="text" name="bookId" placeholder="Enter Book ID">
        <input type="submit" value="Borrow">
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