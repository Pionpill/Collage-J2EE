/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-26 16:37:54
 * @LastEditTime: 2021-12-26 16:38:55
 */
package library.backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="saying")
public class Saying {
    @Id
    @Column(name="id")
    private int id;
    private String book;
    private String saying;
    private String author;
}
