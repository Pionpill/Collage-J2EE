package com.pionpill.backend.pojo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "account")
@JsonIgnoreProperties({"handler","hibernateLazyInitializer"})

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    String ID;
    String realName;
    String username;
    String password;
    String sexual;
    Integer permission;
    String email;
    String academy;
    String major;
}