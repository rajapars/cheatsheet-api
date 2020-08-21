package xyz.tamanmain.cheatsheet.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Table(name = "cheatsheets")
public class CheatSheet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String owner;

    @Column(nullable = false)
    private Boolean isPrivate;

    @Column(nullable = false)
    private String tag;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String cheat;

    @Column()
    private String description;

}
