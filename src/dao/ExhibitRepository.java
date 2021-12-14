package dao;

import java.util.ArrayList;

import dto.Exhibit;
import dao.ExhibitRepository;

public class ExhibitRepository {
	
	private ArrayList<Exhibit> listOfExhibits = new ArrayList<Exhibit>();
	private static ExhibitRepository instance = new ExhibitRepository(); 
	
	public static ExhibitRepository getInstance() {
		return instance;
	}
	
	public ExhibitRepository() {
		Exhibit Child = new Exhibit("����28ȣ", "����� �ݵ���翩���Ի�");
		Child.setDesignation("1962�� 12�� 20��");
		Child.setNationaltreasure("����28ȣ");
		Child.setDescription("���� ����� �ݵ���翩���Ի��� ���ϵ� ���ֽ� ����翡 �ִٰ� �������ֹڹ��� �׸��� ����� �츮�ڹ����� �Ű��� �һ��Դϴ�."
				+ "�Ŷ� 3�� �ݵ��� �� �ϳ��� ������ �Ի��Դϴ�. 1962�� 12�� 20�Ͽ� ���ѹα� ����28ȣ�� �����Ǿ����ϴ�."
				+ "���̴� 1.8m, �� ���� ����� �� �ܿ��� ������ �Ի��̸�, ������ ��, ���� ���� �� �þ��� õ���� �ָ�, �� �ؿ� �����̴� ������ ü������"
				+ "8����~9���� �� ������ �Ŷ󵿺��� �� �����ְ� �ֽ��ϴ�.");
		Child.setExhibitname("����� �ݵ���翩���Ի�");
		Child.setFilename("p28.jpg");
		
		Exhibit Adult = new Exhibit("����78ȣ", "�ݵ��̸����� �ݰ�������");
		Adult.setDesignation("1962�� 12�� 20��");
		Adult.setNationaltreasure("����78ȣ");
		Adult.setDescription("����78ȣ �ݵ��̸����� �ݰ��������� �ﱹ�ô뿡 ���۵� �ݵ� �ݰ��������̸�, 1962�� 12�� 20�Ͽ� ���ѹα� ����78ȣ�� �����Ǿ����ϴ�."
				+ "�һ��� ������ �ٸ��� ���� ���� ���� �÷����� �ݰ��� �ڼ��� �ɾƼ� �޼��� ������ �ٸ� ���� �ΰ� ������ �Ȳ�ġ�� ���� ���� ���� ä �հ����� ��¦ ����"
				+ "��� ���� ������ ����ִ� ����Դϴ�.");
		Adult.setExhibitname("�ݵ��̸����� �ݰ�������");
		Adult.setFilename("p78.jpg");
		
		Exhibit Student = new Exhibit("����83ȣ", "�ݵ��̸����� �ݰ�������");
		Student.setDesignation("1962�� 12�� 20��");
		Student.setNationaltreasure("����83ȣ");
		Student.setDescription("����83ȣ �ݵ��̸����� �ݰ��������� �ﱹ�ô뿡 ���۵� �ݵ� �ݰ������̸�, �����ô붧 �й��� �Ǿ� �������� �Һи��Ͽ� �� �������� ��Ȯ�� �˼���������,"
				+ "����78ȣ �ݵ��̸����� �ݰ�������� �Բ� �ﱹ�ô� �һ� �߿��� ��ǥ���� ���μ� ���������� �ſ� ����� ��ǰ�Դϴ�. Ư�� 6~7���� ���� �ұ����� ��� �ְ��� �����̶��"
				+ "���� ������, �Ϻ� ����� ����� �����ݰ�������� �ſ� ����� ���� ��� �ұ����� ���� ������ �־� ū �ָ��� �޾ƿԽ��ϴ�.");
		Student.setExhibitname("�ݵ��̸����� �ݰ�������");
		Student.setFilename("p83.jpg");
		
		
		
		listOfExhibits.add(Adult);
		listOfExhibits.add(Student);
		listOfExhibits.add(Child);
	
	}



	public ArrayList<Exhibit> getAllExhibits() {
		return listOfExhibits;
	}
	public Exhibit getExhibitById(String exhibitId) {
		Exhibit exhibitById = null;
		
		for(int i = 0; i<listOfExhibits.size(); i++) {
			Exhibit exhibit = listOfExhibits.get(i);
			if(exhibit != null && exhibit.getExhibitId() != null && exhibit.
					getExhibitId().equals(exhibitId)) {
					exhibitById = exhibit;
						break;
			}
		}
		return exhibitById;
	}
}