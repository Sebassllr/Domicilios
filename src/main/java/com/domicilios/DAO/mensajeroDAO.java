package com.domicilios.DAO;

import java.util.List;

//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.domicilios.entities.Mensajero;

public class mensajeroDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(mensajeroDAO.class);

    private SessionFactory sessionFactory;
    
    private mensajeroService mensajeroServices;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

   
    public void addMensajero(Mensajero mensaj) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(mensaj);
        logger.info("Mensajero saved successfully, Mensajero Details=" + mensaj);
    }

    
    public void updateMensajero(Mensajero mensaj) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(mensaj);
        logger.info("Mensajero updated successfully, Mensajero Details=" + mensaj);
    }

    @SuppressWarnings("unchecked")
    
    public List<Mensajero> listPhones() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Mensajero> mensajeroList = session.createQuery("from Mensajero").list();
        for (Mensajero mensaj : mensajeroList) {
            logger.info("Mensajero List::" + mensaj);
        }
        return mensajeroList;
    }

    
    public Mensajero getMensajeroById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Mensajero mensaj = (Mensajero) session.load(Mensajero.class, new Integer(id));
        logger.info("Mensajero loaded successfully, Mensajero details=" + mensaj);
        return mensaj;
    }

    
    public void removeMensajero(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Mensajero mensaj = (Mensajero) session.load(Mensajero.class, new Integer(id));
        if (null != mensaj) {
            session.delete(mensaj);
        }
        logger.info("Mensajero deleted successfully, Mensajero details=" + mensaj);
    }
}
