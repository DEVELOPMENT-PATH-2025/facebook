package com.library.model;

import java.util.ArrayList;
import java.util.List;

public class User {
    private int id;
    private String name;
    private List<BorrowRecord> borrowHistory;

    public User(int id, String name) {
        this.id = id;
        this.name = name;
        this.borrowHistory = new ArrayList<>();
    }

    // Getters
    public int getId() { return id; }
    public String getName() { return name; }
    public List<BorrowRecord> getBorrowHistory() { return borrowHistory; }

    // Setters
    public void setId(int id) { this.id = id; }
    public void setName(String name) { this.name = name; }

    // Add borrow record
    public void addBorrowRecord(BorrowRecord record) {
        borrowHistory.add(record);
    }

    @Override
    public String toString() {
        return "User [ID=" + id + ", Name=" + name + "]";
    }
}