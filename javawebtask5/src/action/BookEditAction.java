package action;

import java.util.Date;

import vo.Book;

import dao.impl.BookDaoImpl;

public class BookEditAction {

	private int bid;

	private String name;

	private String author;

	private String publisher;

	private Date publishdate;

	private float price;

	private boolean isedit;

	public boolean isIsedit() {
		return isedit;
	}

	public void setIsedit(boolean isedit) {
		this.isedit = isedit;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Date getPublishdate() {
		return publishdate;
	}

	public void setPublishdate(Date publishdate) {
		this.publishdate = publishdate;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String save() {
		if (!isedit) {
			Book book = new Book(bid, name, author, publisher, publishdate,
					price);
			BookDaoImpl bookDaoImpl = new BookDaoImpl();
			bookDaoImpl.add(book);
			return "save-success";
		} else {
			Book book = new Book(bid, name, author, publisher, publishdate,
					price);
			BookDaoImpl bookDaoImpl = new BookDaoImpl();
			bookDaoImpl.update(book);
			return "update-success";
		}
	}

}
