package com.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;

import com.spring.beans.Contribution;

@Component
public interface ContributionRepository extends JpaRepository<Contribution, Integer> {

	List<Contribution> findByUserUniqueName(String uniqueName);
	List<Contribution> findByEmailId(String emailId);
	List<Contribution> findByContriDomain(String contriDomain);
	List<Contribution> findByContriTopic(String contriTopic);
	
	@Query("select c from Contribution c where userUniqueName like 'flash-%' group by userUniqueName")
	List<Contribution> findByFlashUserUniqueName();
}