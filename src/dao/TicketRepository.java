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
		Ticket Adult = new Ticket("P1234", "���������", 5000);
		Adult.setDescription("�� 19�� �̻������ �������ּ���.");
		Adult.setTicketPrice(5000);
		Adult.setTicketname("���������");
		Adult.setFilename("ticket3-1.png");
		
		Ticket Student = new Ticket("P1235", "�߰���л������", 3000);
		Student.setDescription("�� 19���̸� �߰���л��̽ø� �������ּ���.");
		Student.setTicketPrice(3000);
		Student.setTicketname("�л������");
		Student.setFilename("ticket3-3.png");
		
		Ticket Child = new Ticket("P1236", "������, ����������", 1000);
		Child.setDescription("0�������� �� 14���̸� ��̰� �����ø� �������ּ���.");
		Child.setTicketPrice(1000);
		Child.setTicketname("�Ƶ������");
		Child.setFilename("ticket3-4.png");
		
		Ticket Family = new Ticket("P1237", "4���̻� ���� �����", 10000);
		Family.setDescription("4�� �̻� �����̽ø� ���� ������� �����ϽǼ� �ֽ��ϴ�.");
		Family.setTicketPrice(1000);
		Family.setTicketname("���������");
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