package com.book.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.book.model.Book;
import com.book.model.dao.BookDao;


@Controller
public class BookController {
	
	@Autowired
	private BookDao bookDao;

	@RequestMapping(value = "/show.html", method = RequestMethod.GET)
	public String show(ModelMap model) {
		List<Book> books = bookDao.getAllBooks();
		model.put("books", books);
		return "show";
	}
	
	@RequestMapping(value = "/add.html", method = RequestMethod.GET)
	public String add(ModelMap model) {		
		model.put("book", new Book());
		return "add";
	}
	
	@RequestMapping(value = "/add.html", method = RequestMethod.POST)
	public String login(@ModelAttribute("Book") Book book, BindingResult bindingResult) {
		
		bookDao.saveBook(book);
		return "redirect:show.html";
	}
}
