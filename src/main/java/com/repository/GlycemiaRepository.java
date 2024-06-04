package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

public interface GlycemiaRepository<GlycemiaReading> extends JpaRepository<GlycemiaReading, Long> {
}
