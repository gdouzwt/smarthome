package cn.gdougym.smarthome.repository;

import cn.gdougym.smarthome.model.Illumination;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * 光照强度数据表对应的Jpa repo
 */
@Repository
public interface IlluminationRepository extends JpaRepository<Illumination, Integer> {
}
