package fr.treeptik;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Adresse {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer Id;
	private Integer numero;
	private String rue;
	private String codePostal;
	
	
	public Adresse(){
		
	}
	/**
	 * @param id
	 * @param numero
	 * @param rue
	 * @param codePostal
	 */
	public Adresse(Integer id, Integer numero, String rue, String codePostal) {
		super();
		Id = id;
		this.numero = numero;
		this.rue = rue;
		this.codePostal = codePostal;
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	public String getRue() {
		return rue;
	}
	public void setRue(String rue) {
		this.rue = rue;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

}
