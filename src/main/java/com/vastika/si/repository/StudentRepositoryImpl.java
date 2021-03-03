package com.vastika.si.repository;


import com.vastika.si.model.Student;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;


@Repository
public class StudentRepositoryImpl implements StudentRepository {


    private final SessionFactory sessionFactory;

    @Autowired
    public StudentRepositoryImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void saveStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.save(student);
    }

    @Override
    public void updateStudent(Student student) {
        Session session = sessionFactory.getCurrentSession();
        session.update(student);


    }

    @Override
    public void deleteStudent(int id) {
        Session session = sessionFactory.getCurrentSession();
        Student student = session.load(Student.class, id);
        if (student != null) {
            session.delete(student);
        }


    }

    @Override
    public Student getStudentById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Student.class, id);


    }

    @Override
    public List<Student> getAllStudent() {

        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Student.class);
        return criteria.list();
    }

    @Override
    public Student getStudentByStudentname(String studentname) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Student  s where s.studentName=?1");
        query.setParameter(1, studentname);
        return (Student) query.getSingleResult();
    }


}
