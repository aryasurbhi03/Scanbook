package com.book.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.book.model.Book;
import com.book.model.dao.BookDao;

@Repository
public class BookDaoImpl implements BookDao {

	private SessionFactory sessionFactory;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public Book getBookById(Integer id) {
		return entityManager.find(Book.class, id);
	}

	public Book getBookByTitle(String title) {
		return entityManager.find(Book.class, title);
	}

	public List<Book> getAllBooks() {
		return entityManager.createQuery( "from Book order by id", Book.class )
	            .getResultList();
	}

	public void saveBook(Book book) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(book);
	}

}
