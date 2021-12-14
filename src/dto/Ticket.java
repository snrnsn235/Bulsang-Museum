package dto;

import java.io.Serializable;

public class Ticket implements Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String TicketId;
	private String Ticketname;
	private Integer TicketPrice;
	private String description;
	private String filename;
	private int quantity;
	
	public Ticket() {
		super();
	}
	
	public Ticket(String ticketId, String ticketname, Integer ticketPrice) {
		this.TicketId = ticketId;
		this.Ticketname = ticketname;
		this.TicketPrice = ticketPrice;
	}

	public String getTicketId() {
		return TicketId;
	}

	public void setTicketId(String ticketId) {
		this.TicketId = ticketId;
	}

	public String getTicketname() {
		return Ticketname;
	}

	public void setTicketname(String ticketname) {
		this.Ticketname = ticketname;
	}

	public Integer getTicketPrice() {
		return TicketPrice;
	}

	public void setTicketPrice(Integer ticket) {
		this.TicketPrice = TicketPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}