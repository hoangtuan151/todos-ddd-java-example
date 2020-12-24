package com.example.clean_arch.todos.infra.repo.sql.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Collection;
import java.util.UUID;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "users")
public class UserEntity {

    @Id
    private String id = UUID.randomUUID().toString();

    @Column(unique = true)
    private String username;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    // mappedBy = Task.user prop
    private Collection<TaskEntity> tasks;
}
