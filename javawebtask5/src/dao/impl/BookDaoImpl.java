package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Book;
import dao.BookDao;

public class BookDaoImpl implements BookDao {
	
	HibernateSessionFactory hibernateSessionFactory;
	public Transaction transaction = null;
	
	public void add(Book book) {
		Session session = hibernateSessionFactory.getSession();
		transaction=session.beginTransaction();
		session.save(book);
		transaction.commit();
		session.close();
	}

	public void deleteById(int id) {
		Session session = hibernateSessionFactory.getSession();
		
		transaction=session.beginTransaction();
		Book book =  (Book) session.get(Book.class, id);
		session.delete(book);
		transaction.commit();
		session.close();
	}

	public Book findByName(String name) {
		Book book = null;
		Session session = hibernateSessionFactory.getSession();
		String hql="from Book b where b.name =:name";
		Query query=session.createQuery(hql);
		query.setString("name", name);
		System.out.println(name +"book's name...");
		System.out.println(query.uniqueResult()+"sadasdasd");
		book=(Book) query.list().get(0);
		session.close();
		return book;
	}

	public List<Book> getAll() {
		List<Book> books;
		Session session = hibernateSessionFactory.getSession();
		String hql="from Book b";
		Query query=session.createQuery(hql);
		books = query.list();
		session.close();
		return books;
	}

	public void update(Book book) {
		Session session = hibernateSessionFactory.getSession();
		transaction=session.beginTransaction();
		session.update(book);
		transaction.commit();
		session.close();
	}
}
