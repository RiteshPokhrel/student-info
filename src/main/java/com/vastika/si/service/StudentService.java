package com.vastika.si.service;

import com.vastika.si.model.Student;

import java.util.List;

public interface StudentService {

    void saveStudent(Student student) ;

    void updateStudent(Student student) ;

    void deleteStudent(int id) ;

    Student getStudentById(int id) ;

    List<Student> getAllStudent();
}
