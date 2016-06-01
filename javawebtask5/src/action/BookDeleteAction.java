package action;

import dao.impl.BookDaoImpl;

public class BookDeleteAction {
	private String bid;

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String delete() {
		BookDaoImpl bookDaoImpl=new BookDaoImpl();
		System.out.println(bid);
		int id=Integer.parseInt(bid);
		bookDaoImpl.deleteById(id);
		return "delete-success";
	}
}
