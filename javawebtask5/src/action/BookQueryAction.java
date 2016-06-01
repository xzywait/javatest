package action;

import java.io.UnsupportedEncodingException;

import dao.impl.BookDaoImpl;
import vo.Book;

public class BookQueryAction {

	private String name;
	
	private Book book;
	
	private boolean isedit;
	

	public boolean isIsedit() {
		return isedit;
	}

	public void setIsedit(boolean isedit) {
		this.isedit = isedit;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String getName() {
		
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String query(){
		
		BookDaoImpl bookDaoImpl = new BookDaoImpl();
		String name1="";
		try {
			name1 = new String(name.getBytes("ISO-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(name1);
		book = bookDaoImpl.findByName(name1);
		isedit=true;
		return "query-success";
	}
	
}
