package com.book.model.dao;

import java.util.List;

import com.book.model.Book;

public interface BookDao {
	
	Book getBookById(Integer id);
	
	Book getBookByTitle(String title);
	
	List<Book> getAllBooks();
	
	void saveBook(Book book);
}
