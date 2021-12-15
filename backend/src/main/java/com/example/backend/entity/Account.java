package com.example.backend.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Account {
    @Id
    private Integer id;
    private String realName;
    private String userName;
    private String passWord;
    private String sexual;
    private Integer permission; // 0:超级权限 1: 管理员 2: 普通
    private String email;
    private String partment;
}
