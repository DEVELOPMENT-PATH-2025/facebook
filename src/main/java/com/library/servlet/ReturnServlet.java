package com.library.servlet;

import com.library.model.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class ReturnServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        int userId = 1; // Demo user

        List<Book> books = (List<Book>) getServletContext().getAttribute("books");
        List<BorrowRecord> records = (List<BorrowRecord>) getServletContext().getAttribute("records");

        Book selectedBook = null;
        for (Book b : books) {
            if (b.getId() == bookId) {
                selectedBook = b;
                break;
            }
        }

        if (selectedBook != null) {
            selectedBook.setAvailable(true);

            if (records != null) {
                for (BorrowRecord r : records) {
                    if (r.getBookId() == bookId && r.getUserId() == userId && r.getReturnDate() == null) {
                        r.setReturnDate(new Date());
                        break;
                    }
                }
            }

            request.setAttribute("message", "Book returned successfully!");
        } else {
            request.setAttribute("message", "Book not found.");
        }

        request.getRequestDispatcher("return.jsp").forward(request, response);
    }
}