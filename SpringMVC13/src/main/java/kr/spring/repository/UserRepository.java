package kr.spring.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.spring.domain.Users;

public interface UserRepository extends JpaRepository<Users, Long> {
	Optional<Users> findByEmail(String email);
	
}
