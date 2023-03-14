package com.user_details.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.user_details.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
//jpaRepository gives me pagination support
}
