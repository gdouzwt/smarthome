package cn.gdougym.smarthome.repository;

import cn.gdougym.smarthome.model.Humidity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * 湿度数据表对应的Jpa repo
 */
@Repository
public interface HumidityRepository extends JpaRepository<Humidity, Integer> {
}
