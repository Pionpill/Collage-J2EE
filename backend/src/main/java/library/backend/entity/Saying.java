/*
 * @Description: your project
 * @version: 1.0
 * @Author: Zero689
 * @LastEditors: Pionpill
 * @Date: 2021-12-26 16:37:54
 * @LastEditTime: 2021-12-31 13:39:58
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
