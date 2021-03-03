package com.vastika.si.repository;

import com.vastika.si.model.Student;

import java.util.List;

public interface StudentRepository {

    void saveStudent(Student student) ;

    void updateStudent(Student student) ;

    void deleteStudent(int id) ;

    Student getStudentById(int id) ;

    List<Student> getAllStudent();

    Student getStudentByStudentname(String studentname);


}
