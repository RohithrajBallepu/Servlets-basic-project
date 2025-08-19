package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.person;

public class daoperson {
		EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("Rohith");
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		
		public person saveperson(person person) {
			entityTransaction.begin();
			entityManager.persist(person);
			entityTransaction.commit();
			return person;
		}
		public person fetchPersonbyEmailid(String email) {
//			Query query=entityManager.createQuery("select p from person p where email=?1");
//			query.setParameter(1,email);
//			person person= (person) query.getSingleResult();
//			return person;
			 try {
		            
		            Query query = entityManager.createQuery("SELECT p FROM person p WHERE p.email = :email");
		            query.setParameter("email", email);
		            person person= (person) query.getSingleResult();
					return person;
		            
		        } catch (Exception e) {
		            return null;
		        } 
		}
		public List<person> fetchall(){
		Query query=entityManager.createQuery("select p from person p");
		List<person>list= query.getResultList();
		return list;
		}
		
		
//		public void deleteperson(int personid) {	
//		person  person=entityManager.find(person.class, personid);
//		entityTransaction.begin();
//		entityManager.remove(person);
//		entityTransaction.commit();
//			
//		}
		
		public boolean deleteperson(int personid) {	
			person  person=entityManager.find(person.class, personid);
			entityTransaction.begin();
			entityManager.remove(person);
			entityTransaction.commit();
			if(person!=null) return true;
			else return false;
			
				
			}
		public person fetchBYiD(int id) {
		person person=entityManager.find(person.class, id);
		return person;
		}
		public person updateperson(person newperson) {
				entityTransaction.begin();
				entityManager.merge(newperson);
				entityTransaction.commit();
				return newperson;
			}
		
}
