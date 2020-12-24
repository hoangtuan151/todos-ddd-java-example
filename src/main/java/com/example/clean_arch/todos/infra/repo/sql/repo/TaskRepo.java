package com.example.clean_arch.todos.infra.repo.sql.repo;

import com.example.clean_arch.todos.infra.repo.sql.entity.TaskEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface TaskRepo extends JpaRepository<TaskEntity, String> {
}
