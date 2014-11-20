package fr.treeptik;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;


@Entity
@Table(name="Adresse")
public class Address {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(name="etat")
	private String state;
	@Column(name="numero")
	private Integer number; 
	@Column(name="ville")
	private String  town;
	
	
	public Address(){
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	/**
	 * @param id
	 * @param state
	 * @param number
	 * @param town
	 */
	public Address(Integer id, String state, Integer number, String town) {
		super();
		this.id = id;
		this.state = state;
		this.number = number;
		this.town = town;
	}
	
	

}
