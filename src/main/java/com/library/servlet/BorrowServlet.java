package com.library.servlet;

import com.library.model.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class BorrowServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int userId = 1; // Demo user ID

        List<Book> books = (List<Book>) getServletContext().getAttribute("books");
        Book selectedBook = null;

        for (Book b : books) {
            if (b.getId() == bookId) {
                selectedBook = b;
                break;
            }
        }

        if (selectedBook != null && selectedBook.isAvailable()) {
            selectedBook.setAvailable(false);

            BorrowRecord record = new BorrowRecord(userId, bookId, new Date());
            List<BorrowRecord> records = (List<BorrowRecord>) getServletContext().getAttribute("records");
            if (records == null) {
                records = new ArrayList<>();
            }
            records.add(record);
            getServletContext().setAttribute("records", records);

            request.setAttribute("message", "Book borrowed successfully!");
        } else {
            request.setAttribute("message", "Book not available.");
        }

        request.getRequestDispatcher("borrow.jsp").forward(request, response);
    }
}