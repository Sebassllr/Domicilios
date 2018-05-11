package com.domicilios.DAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.domicilios.entities.Mensajero;
import com.domicilios.entities.Pedido;

public class pedidoDAO {

	private static final Logger logger = LoggerFactory.getLogger(pedidoDAO.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

   
    public void addPedido(Pedido pedido) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(pedido);
        logger.info("Phone saved successfully, Phone Details=" + pedido);
    }
}
