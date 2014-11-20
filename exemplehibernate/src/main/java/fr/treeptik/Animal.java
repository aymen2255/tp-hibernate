package fr.treeptik;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Animal {
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer Id;
	private String nom;
	private Integer age;
	
	@ManyToOne// si absence des 2 lignes , création d'une table de jointure inutile ici
	private Personne personne;//
	
	
	public Animal(){
		
	}
	
	/**
	 * @param id
	 * @param nom
	 * @param age
	 * @param personne
	 */
	public Animal(Integer id, String nom, Integer age, Personne personne) {
		super();
		Id = id;
		this.nom = nom;
		this.age = age;
		this.personne = personne;
	}
	public Personne getPersonne() {
		return personne;
	}
	public void setPersonne(Personne personne) {
		this.personne = personne;
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	
	

}
