package com.vastika.si.service;

import com.vastika.si.model.Student;
import com.vastika.si.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collection;

@Service
@Transactional
public class CustomUserDetailService implements UserDetailsService {


    @Autowired
    private StudentRepository studentRepository;


    @Override
    public UserDetails loadUserByUsername(String username) {
        Student student = studentRepository.getStudentByStudentname(username);

        if (student == null) {
            throw new UsernameNotFoundException("User not found in db)");
        }
        return new org.springframework.security.core.userdetails.User(student.getStudentName(), student.getPassword(), true, true, true, true, getAuthorities(student.getRole().getRoleName()));
    }

    public Collection<SimpleGrantedAuthority> getAuthorities(String roleName) {

        Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(roleName));
        return authorities;

    }
}
