package dao;

import java.util.ArrayList;

import dto.Ticket;
import dao.TicketRepository;

public class TicketRepository {
	
	private ArrayList<Ticket> listOfTickets = new ArrayList<Ticket>();
	private static TicketRepository instance = new TicketRepository(); 
	
	public static TicketRepository getInstance() {
		return instance;
	}
	
	public TicketRepository() {
		Ticket Adult = new Ticket("P1234", "성인입장권", 5000);
		Adult.setDescription("만 19세 이상관람시 구매해주세요.");
		Adult.setTicketPrice(5000);
		Adult.setTicketname("성인입장권");
		Adult.setFilename("ticket3-1.png");
		
		Ticket Student = new Ticket("P1235", "중고등학생입장권", 3000);
		Student.setDescription("만 19세미만 중고등학생이시면 구매해주세요.");
		Student.setTicketPrice(3000);
		Student.setTicketname("학생입장권");
		Student.setFilename("ticket3-3.png");
		
		Ticket Child = new Ticket("P1236", "영유아, 노약자입장권", 1000);
		Child.setDescription("0개월부터 만 14세미만 어린이가 있으시면 구매해주세요.");
		Child.setTicketPrice(1000);
		Child.setTicketname("아동입장권");
		Child.setFilename("ticket3-4.png");
		
		Ticket Family = new Ticket("P1237", "4인이상 가족 입장권", 10000);
		Family.setDescription("4인 이상 가족이시면 할인 입장권을 구매하실수 있습니다.");
		Family.setTicketPrice(1000);
		Family.setTicketname("가족입장권");
		Family.setFilename("ticket3-2.png");
		
		listOfTickets.add(Adult);
		listOfTickets.add(Student);
		listOfTickets.add(Child);
		listOfTickets.add(Family);
	}



	public ArrayList<Ticket> getAllTickets() {
		return listOfTickets;
	}
	public Ticket getTicketById(String ticketId) {
		Ticket ticketById = null;
		
		for(int i = 0; i<listOfTickets.size(); i++) {
			Ticket ticket = listOfTickets.get(i);
			if(ticket != null && ticket.getTicketId() != null && ticket.
					getTicketId().equals(ticketId)) {
						ticketById = ticket;
						break;
			}
		}
		return ticketById;
	}
	public void addProduct(Ticket product) {
			listOfTickets.add(product);
	}
}