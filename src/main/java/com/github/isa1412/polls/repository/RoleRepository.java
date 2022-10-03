package com.github.isa1412.polls.repository;

import com.github.isa1412.polls.model.Role;
import com.github.isa1412.polls.model.RoleName;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(RoleName roleName);
}
