package fr.treeptik;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="Projet")
public class Project {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(name="nom")
	private String name;
	
	@ManyToMany
	private List<Employee> employees;
	/**
	 * 
	 */
	public Project() {
		
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param id
	 * @param name
	 */
	public Project(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
