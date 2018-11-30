package com.canadatrust.repository;

import com.canadatrust.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    @Query("select u from User u where u.email = ?1")
    User getUserByUserName(String email);

    @Query("select u from User u where u.password = ?1")
    User getUserByPassword(String oldPassword);
}
