/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-30 21:24:58
 * @LastEditTime: 2021-12-30 21:29:37
 */
package library.backend.entity;

import java.sql.Date;

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
@Table(name = "atricle") // J2EE user 表
@JsonIgnoreProperties({"handler","hibernateLazyInitializer"}) // json 字段忽略
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    private String title;
    private String content_md;
    private String content_html;
    @Column(name = "abstract")  // abstract 是 Java 保留字只能换个名字
    private String articleAbstract;
    private Date date;
}
