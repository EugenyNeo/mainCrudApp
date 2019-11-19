package com.company.mainCrudApp.dao;

import com.company.mainCrudApp.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.logging.Logger;

@Repository
public class UserDaoImpl implements UserDao{
   private static final Logger logger = (Logger) LoggerFactory.getLogger(UserDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("The User successful saved. User details:  " + user);
    }

    @Override
    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("The User successful updated. User details:  " + user);

    }

    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User)  session.load(User.class, new Integer(id) );

        if(user!=null){
            session.delete(id);
        }
        logger.info("The User successful removed. User details:  " + user);

    }

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User)  session.load(User.class, new Integer(id) );
        logger.info("The User successful loaded. User details:  " + user);
        return user;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> listUser =session.createQuery("from User").list();

        for(User user: listUser){
            logger.info("The User list:  " + user);
        }
        return listUser;
    }
}
