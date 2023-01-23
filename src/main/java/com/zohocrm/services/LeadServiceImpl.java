package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entities.Lead;
import com.zohocrm.repositories.LeadRepositoty;

@Service
public class LeadServiceImpl implements LeadService {
	
	@Autowired
	private LeadRepositoty leadRepo;

	@Override
	public void saveOneLead(Lead lead) {
		leadRepo.save(lead);
	}

	@Override
	public Lead findLeadById(long id) {
		Optional<Lead> findById = leadRepo.findById(id);
		Lead lead = findById.get();
		return lead;
	}

	@Override
	public void deleteById(long id) {
		leadRepo.deleteById(id);
	}

	@Override
	public List<Lead> getAllLeads() {
		List<Lead> lead = leadRepo.findAll();
		return lead;
	}

}
