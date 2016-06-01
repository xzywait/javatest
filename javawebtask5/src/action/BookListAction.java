package action;

import java.util.List;

import vo.Book;

import dao.impl.BookDaoImpl;

public class BookListAction {
	
	private List<Book> books; 
	
	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

	public String list(){
		BookDaoImpl bookDaoImpl = new BookDaoImpl();
		 books=bookDaoImpl.getAll();
		return "list-success";
	}
}
