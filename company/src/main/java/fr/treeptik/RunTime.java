package fr.treeptik;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public class RunTime {

	public static void main(String[] args) {
		EntityManager entityManager=Persistence.createEntityManagerFactory("sample").createEntityManager();

	}

}
