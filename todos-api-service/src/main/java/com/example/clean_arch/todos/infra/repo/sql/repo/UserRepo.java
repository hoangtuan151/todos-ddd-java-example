package com.example.clean_arch.todos.infra.repo.sql.repo;

import com.example.clean_arch.todos.infra.repo.sql.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<UserEntity, String> {
    UserEntity findByUsername(String username);
}
