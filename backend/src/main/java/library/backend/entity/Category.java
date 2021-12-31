/*
 * @Description: your project
 * @version: 1.0
 * @Author: Titc-s,Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 11:35:47
 * @LastEditTime: 2021-12-31 14:01:38
 */
package library.backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    private String name;
}