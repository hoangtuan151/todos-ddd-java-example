package com.example.clean_arch.todos.infra.repo.sql.repo;

import com.example.clean_arch.todos.infra.repo.sql.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepo extends JpaRepository<UserEntity, String> {
    UserEntity findByUsername(String username);
}
