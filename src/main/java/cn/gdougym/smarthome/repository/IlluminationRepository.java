package cn.gdougym.smarthome.repository;

import cn.gdougym.smarthome.model.Humidity;
import cn.gdougym.smarthome.model.Illumination;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IlluminationRepository extends JpaRepository<Illumination, Integer> {
}
