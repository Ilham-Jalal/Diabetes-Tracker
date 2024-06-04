package com.service;

import com.model.GlycemiaReading;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.repository.GlycemiaRepository;

import java.util.List;
import java.util.Optional;

@Service
public class GlycemiaService {

    @Autowired
    private GlycemiaRepository repository;

    public void addReading(GlycemiaReading reading) {
        repository.save(reading);
    }

    public void deleteReading(long id) {
        repository.deleteById(id);
    }

    public Optional<GlycemiaReading> findById(long id) {
        return repository.findById(id);
    }

    public List<GlycemiaReading> getAllReadings() {
        return repository.findAll();
    }
}
