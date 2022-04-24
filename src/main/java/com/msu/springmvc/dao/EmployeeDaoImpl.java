package com.msu.springmvc.dao;

import com.msu.springmvc.entity.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Employee ", Employee.class).getResultList();
    }

    @Override
    @Transactional
    public void saveEmployee(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    @Transactional
    public Employee getEmployeeById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Employee.class, id);
    }

    @Override
    @Transactional
    public void deleteEmployee(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Employee where id=:employeeId");
        query.setParameter("employeeId", id);
        query.executeUpdate();
    }
}
