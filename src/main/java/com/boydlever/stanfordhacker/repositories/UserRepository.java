package com.boydlever.stanfordhacker.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.boydlever.stanfordhacker.models.User;

@Repository
public interface UserRepository extends CrudRepository <User,Long>{
	Optional<User> findByEmail(String email);
}