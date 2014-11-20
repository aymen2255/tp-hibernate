package fr.treeptik;

import java.util.Date;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Employe")
public class Employee {
	
	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	
	private String statut;
	
	@Column(name="prenom")
	private String firstName;
	@Column(name="nom")
	private String lastName;
	
	@Column(name="salaire")
	private Integer salary;
	
	@Column(name="dateArrivee")
	private Date startDate;
	
	@ManyToOne
	@JoinColumn(name="departement")
	private Department department;
	
	@OneToOne
	@JoinColumn(name="adresse")
	private Address address;
	
	@ManyToOne
	@JoinColumn(name="manager")
	private Employee manager;
	
	@ManyToMany
	@JoinTable(name="Employe_Projet",joinColumns=@JoinColumn(name="employe"),inverseJoinColumns=@JoinColumn(name="projets"))
	private List<Project> projects;// à revoir
	
	@ElementCollection
	@CollectionTable(name="Numeros",joinColumns=@JoinColumn(name="Employe"))
	@Column(name="numeros")
	private List<String>phoneNumbers;
	
	
	/**
	 * @param id
	 * @param statut
	 * @param firstName
	 * @param lastName
	 * @param salary
	 * @param startDate
	 */
	public Employee(Integer id, String statut, String firstName,
			String lastName, Integer salary, Date startDate) {
		super();
		this.id = id;
		this.statut = statut;
		this.firstName = firstName;
		this.lastName = lastName;
		this.salary = salary;
		this.startDate = startDate;
	}
	/**
	 * 
	 */
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	

}
