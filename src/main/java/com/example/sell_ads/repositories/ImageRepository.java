package com.example.sell_ads.repositories;

import com.example.sell_ads.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
