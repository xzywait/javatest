package vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Book {

	private int bid;

	private String name;

	private String author;

	private String publisher;

	private Date publishdate;

	private float price;

	private Order order;

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
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

	public Book() {
		// TODO Auto-generated constructor stub
	}

	public Book(int bid, String name, String author, String publisher,
			Date publishdate, float price) {
		super();
		this.bid = bid;
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.publishdate = publishdate;
		this.price = price;
	}

	public Book(String bid, String name, String author, String publisher,
			String publishdate, String price) {
		try {
			int _bid = Integer.parseInt(bid);
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			Date _publishdate = format.parse(publishdate);
			float _price = Float.parseFloat(price);
			this.bid = _bid;
			this.name = name;
			this.author = author;
			this.publisher = publisher;
			this.publishdate = _publishdate;
			this.price = _price;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String toString() {
		return "Book [author=" + author + ", bid=" + bid + ", name=" + name
				+ ", price=" + price + ", publishdate=" + publishdate
				+ ", publisher=" + publisher + "]";
	}

}
