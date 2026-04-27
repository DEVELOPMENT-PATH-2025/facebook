package com.library.servlet;

import com.library.model.Book;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class BookServlet extends HttpServlet {
    private List<Book> books;

    @Override
    public void init() {
        books = new ArrayList<>();
        books.add(new Book(1, "The Great Gatsby", "F. Scott Fitzgerald", true));
        books.add(new Book(2, "1984", "George Orwell", true));
        books.add(new Book(3, "To Kill a Mockingbird", "Harper Lee", false));
        getServletContext().setAttribute("books", books);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String query = request.getParameter("query");
        List<Book> books = (List<Book>) getServletContext().getAttribute("books");
        List<Book> results = new ArrayList<>();

        if (query != null && !query.isEmpty()) {
            for (Book b : books) {
                if (b.getTitle().toLowerCase().contains(query.toLowerCase()) ||
                    b.getAuthor().toLowerCase().contains(query.toLowerCase())) {
                    results.add(b);
                }
            }
        }

        request.setAttribute("results", results);
        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}