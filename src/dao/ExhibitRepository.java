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
		Exhibit Child = new Exhibit("국보28호", "백률사 금동약사여래입상");
		Child.setDesignation("1962년 12월 20일");
		Child.setNationaltreasure("국보28호");
		Child.setDescription("경주 백률사 금동약사여래입상은 경상북도 경주시 백률사에 있다가 국립경주박물관 그리고 현재는 우리박물관에 옮겨진 불상입니다."
				+ "신라 3대 금동상 중 하나로 유일한 입상입니다. 1962년 12월 20일에 대한민국 국보28호로 지정되었습니다."
				+ "높이는 1.8m, 두 손을 결실한 것 외에는 완전한 입상이며, 넓적한 얼굴, 맥이 빠져 축 늘어진 천의의 주름, 그 밑에 엿보이는 힘없는 체구등이"
				+ "8세기~9세기 초 무렵의 신라동불을 잘 보여주고 있습니다.");
		Child.setExhibitname("백률사 금동약사여래입상");
		Child.setFilename("p28.jpg");
		
		Exhibit Adult = new Exhibit("국보78호", "금동미륵보살 반가사유상");
		Adult.setDesignation("1962년 12월 20일");
		Adult.setNationaltreasure("국보78호");
		Adult.setDescription("국보78호 금동미륵보살 반가사유상은 삼국시대에 제작된 금동 반가사유상이며, 1962년 12월 20일에 대한민국 국보78호에 지정되었습니다."
				+ "불상은 오른쪽 다리를 왼쪽 무릎 위에 올려놓은 반가의 자세로 앉아서 왼손을 오른쪽 다리 위에 두고 오른쪽 팔꿈치는 무릎 위에 붙인 채 손가락을 살짝 뺨에"
				+ "대고 깊은 생각에 잠겨있는 모습입니다.");
		Adult.setExhibitname("금동미륵보살 반가사유상");
		Adult.setFilename("p78.jpg");
		
		Exhibit Student = new Exhibit("국보83호", "금동미륵보살 반가사유상");
		Student.setDesignation("1962년 12월 20일");
		Student.setNationaltreasure("국보83호");
		Student.setDescription("국보83호 금동미륵보살 반가사유상은 삼국시대에 제작된 금동 반가유상이며, 일제시대때 밀반출 되어 출토지가 불분명하여 그 제작지를 정확히 알수없었으나,"
				+ "국보78호 금동미륵보살 반가사유상과 함께 삼국시대 불상 중에서 대표적인 예로서 조형적으로 매우 우수한 작품입니다. 특히 6~7세기 동양 불교조각 가운데 최고의 걸작이라는"
				+ "평이 있으며, 일본 교토시 고류시 목조반가사유상과 매우 흡사해 한일 고대 불교조각 교류 연구에 있어 큰 주목을 받아왔습니다.");
		Student.setExhibitname("금동미륵보살 반가사유상");
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