package cn.gdougym.smarthome.api;

import cn.gdougym.smarthome.model.Humidity;
import cn.gdougym.smarthome.repository.HumidityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class HumidityController {

    @Autowired
    private HumidityRepository humidityRepository;

    @RequestMapping(value = "humidity", method = RequestMethod.GET)
    public List<Humidity> list() {
        return humidityRepository.findAll();
    }
}
