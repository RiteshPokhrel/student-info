package com.vastika.si;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordEncoderUtil {




    public static void main(String[] args) {
PasswordEncoder encoder =new BCryptPasswordEncoder();
String password =encoder.encode("admin");
        System.out.println("password is :" +password);

    }
    public static String encodePassword(String password){
    PasswordEncoder encoder= new BCryptPasswordEncoder();
    return  encoder.encode(password);

}





}
