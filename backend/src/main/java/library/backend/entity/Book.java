/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Rooter
 * @Date: 2021-12-19 11:42:12
 * @LastEditTime: 2021-12-19 12:54:00
 */
package library.backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data 
@Entity 
@Table(name = "book") 
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @ManyToOne
    @JoinColumn(name="cid")
    private Category category;

    private String cover;
    private String title;
    private String author;
    private String date;
    private String press;
    private String abs;
}