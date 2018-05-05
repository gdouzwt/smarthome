package cn.gdougym.smarthome.repository;

import cn.gdougym.smarthome.model.Temperature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * 温度数据表对应的Jpa repo
 */
@Repository
public interface TemperatureRepository extends JpaRepository<Temperature, Integer> {
}
