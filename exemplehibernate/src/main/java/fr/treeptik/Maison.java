package fr.treeptik;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Maison {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer Id;
	
	private long superficie;
	
	public Maison(){
		
	}

	/**
	 * @param id
	 * @param superficie
	 */
	public Maison(Integer id, long superficie) {
		super();
		Id = id;
		this.setSuperficie(superficie);
	}

	public long getSuperficie() {
		return superficie;
	}

	public void setSuperficie(long superficie) {
		this.superficie = superficie;
	}
	
	

}
