<%@ page import="java.util.*, com.library.model.BorrowRecord" %>
<html>
<head>
    <title>Borrowing History</title>
</head>
<body>
    <h2>Borrowing History</h2>
    <%
        List<BorrowRecord> records = (List<BorrowRecord>) application.getAttribute("records");
        if (records != null && !records.isEmpty()) {
            for (BorrowRecord r : records) {
    %>
        <p>
            User ID: <%= r.getUserId() %> | Book ID: <%= r.getBookId() %><br>
            Borrowed On: <%= r.getBorrowDate() %><br>
            Returned On: <%= r.getReturnDate() == null ? "Not yet returned" : r.getReturnDate() %>
        </p>
    <%
            }
        } else {
    %>
        <p>No borrowing history available.</p>
    <%
        }
    %>
</body>
</html>