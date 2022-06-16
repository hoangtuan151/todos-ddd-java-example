package com.example.clean_arch.todos.infra.repo.sql.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tasks")
public class TaskEntity {

    @Id
    private String id = UUID.randomUUID().toString();
    private String desc;

    // status: 0: new
    private int status;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;
}
