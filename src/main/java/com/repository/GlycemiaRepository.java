package com.repository;

import com.model.GlycemiaReading;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GlycemiaRepository extends JpaRepository<GlycemiaReading, Long> {
}
