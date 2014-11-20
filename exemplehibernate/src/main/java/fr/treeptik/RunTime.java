package fr.treeptik;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public class RunTime {

	public static void main(String[] args) {
	
		EntityManager entityManager=Persistence.createEntityManagerFactory("sample").createEntityManager();
		
/*		Personne p = new Personne();
		p.setNom("Dupont");
		p.setPrenom("Paul");
		p.setAge(35);
		entityManager.getTransaction().begin(); // ds la pratique jamais à faire car c'est le framework du service d'application qui gère les transactions ex: spring
		entityManager.persist(p);
		entityManager.flush();
		entityManager.getTransaction().commit();
		System.out.println(p.getId());*/
		

	}

}
