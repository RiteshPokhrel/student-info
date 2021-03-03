package com.vastika.si.service;

import com.vastika.si.PasswordEncoderUtil;
import com.vastika.si.model.Role;
import com.vastika.si.model.Student;
import com.vastika.si.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {


    @Autowired
    private StudentRepository studentRepository;


    @Override
    public void saveStudent(Student student) {
         String encodePass = PasswordEncoderUtil.encodePassword(student.getPassword());
         student.setPassword(encodePass);
         Role role =new Role();
         role.setId(2);
         role.setRoleName("ROLE_USER");
         student.setRole(role);
         studentRepository.saveStudent(student);



    }

    @Override
    public void updateStudent(Student student) {
        String encodePass = PasswordEncoderUtil.encodePassword(student.getPassword());
        student.setPassword(encodePass);
        studentRepository.updateStudent(student);

    }

    @Override
    public void deleteStudent(int id) {
        studentRepository.deleteStudent(id);

    }

    @Override
    public Student getStudentById(int id) {

        return studentRepository.getStudentById(id);


    }

    @Override
    public List<Student> getAllStudent() {

        return studentRepository.getAllStudent();
    }
}

