package dao;

import java.util.List;

import vo.Book;

public interface BookDao {
	
	public void add(Book book);
	
	public Book findByName(String name);
	
	public void update(Book book);
	
	public List<Book> getAll();
	
	public void deleteById(int id);
	
	
}
