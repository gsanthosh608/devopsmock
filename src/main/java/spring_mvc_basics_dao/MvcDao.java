package spring_mvc_basics_dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import spring_mvc_basics_dto.MvcDto;

@Component
public class MvcDao {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public void insert(MvcDto mv) {
		et.begin();
		em.persist(mv);
		et.commit();
	}

	public void delete(int id) {
		MvcDto d1 = em.find(MvcDto.class, id);
		et.begin();
		em.remove(d1);
		et.commit();
	}

	public Object fetchAll() {
		Query q = em.createQuery("select data from MvcDto data");
		List<MvcDto> list = q.getResultList();
		if (list.isEmpty()) {
			return "no data found";
		} else
			return list;
	}

	public MvcDto fetchById(int id) {
		MvcDto d2 = em.find(MvcDto.class, id);
		return d2;
	}

	public String deleteAll() {
		Query q = em.createQuery("select data from MvcDto data");
		List<MvcDto> l= q.getResultList();
		if(l.isEmpty())
		{
			return "no data found";
		}
		else {
			for(MvcDto s:l)
			{
				et.begin();
				em.remove(s);
				et.commit();
			}
			return "data deleted";
		}
	}
	public MvcDto update(MvcDto id) {
		et.begin();
		em.merge(id);
		et.commit();
		return id;
	}
	public Object home(int id) {
	MvcDto h = em.find(MvcDto.class, id);	
	if(h!=null) {
		return h.getPasswd();
	}else {
		return "enter valied data";
	}
	}
}
