/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 21:27:21
 * @LastEditTime: 2021-12-19 01:09:01
 */
package library.backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data // 这个依赖比较特殊，要安装插件
@Entity  // 数据库与实体连接
@Table(name = "user") // J2EE user 表
@JsonIgnoreProperties({"handler","hibernateLazyInitializer"}) // json 字段忽略
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // 主键
    @Column(name="id")
    private String id;
    private String username;
    private String password;
    // 必须写 Column 不然报错
    @Column(name="realname")
    private String realName;
    private String sexual;
    private String permission;
    private String email;
    private String academy;
    private String major;
}
