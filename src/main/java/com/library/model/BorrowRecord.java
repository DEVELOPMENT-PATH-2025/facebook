package com.library.model;

import java.util.Date;

public class BorrowRecord {
    private int userId;
    private int bookId;
    private Date borrowDate;
    private Date returnDate;

    public BorrowRecord(int userId, int bookId, Date borrowDate) {
        this.userId = userId;
        this.bookId = bookId;
        this.borrowDate = borrowDate;
    }

    // Getters
    public int getUserId() { return userId; }
    public int getBookId() { return bookId; }
    public Date getBorrowDate() { return borrowDate; }
    public Date getReturnDate() { return returnDate; }

    // Setters
    public void setUserId(int userId) { this.userId = userId; }
    public void setBookId(int bookId) { this.bookId = bookId; }
    public void setBorrowDate(Date borrowDate) { this.borrowDate = borrowDate; }
    public void setReturnDate(Date returnDate) { this.returnDate = returnDate; }

    @Override
    public String toString() {
        return "BorrowRecord [UserID=" + userId + ", BookID=" + bookId +
               ", BorrowDate=" + borrowDate + ", ReturnDate=" + returnDate + "]";
    }
}