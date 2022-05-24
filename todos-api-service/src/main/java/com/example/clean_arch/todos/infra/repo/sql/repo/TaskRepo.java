package com.example.clean_arch.todos.infra.repo.sql.repo;

import com.example.clean_arch.todos.infra.repo.sql.entity.TaskEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepo extends JpaRepository<TaskEntity, String> {
}
