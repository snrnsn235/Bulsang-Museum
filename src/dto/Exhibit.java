package dto;

import java.io.Serializable;

public class Exhibit implements Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String ExhibitId;
	private String Exhibitname;
	private String description;
	private String designation;
	private String nationaltreasure;
	private String filename;
	
	public Exhibit() {
		super();
	}
	
	public Exhibit(String ticketId, String ticketname) {
		this.ExhibitId = ticketId;
		this.Exhibitname = ticketname;
	}

	public String getExhibitId() {
		return ExhibitId;
	}

	public void setExhibitId(String exhibitId) {
		ExhibitId = exhibitId;
	}

	public String getExhibitname() {
		return Exhibitname;
	}

	public void setExhibitname(String exhibitname) {
		Exhibitname = exhibitname;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getNationaltreasure() {
		return nationaltreasure;
	}

	public void setNationaltreasure(String nationaltreasure) {
		this.nationaltreasure = nationaltreasure;
	}
	
	
}
	