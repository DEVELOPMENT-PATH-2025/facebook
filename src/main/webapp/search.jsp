<%@ page import="java.util.*, com.library.model.Book" %>
<html>
<head>
    <title>Search Books</title>
</head>
<body>
    <h2>Search Books</h2>
    <form action="BookServlet" method="get">
        <input type="text" name="query" placeholder="Enter title or author">
        <input type="submit" value="Search">
    </form>

    <h3>Results:</h3>
    <%
        List<Book> results = (List<Book>) request.getAttribute("results");
        if (results != null) {
            for (Book b : results) {
    %>
        <p>
            <b><%= b.getTitle() %></b> by <%= b.getAuthor() %>  
            - Available: <%= b.isAvailable() ? "Yes" : "No" %>
        </p>
    <%
            }
        }
    %>
</body>
</html>