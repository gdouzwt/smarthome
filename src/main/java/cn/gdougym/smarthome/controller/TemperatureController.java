package cn.gdougym.smarthome.controller;

import cn.gdougym.smarthome.model.Temperature;
import cn.gdougym.smarthome.repository.TemperatureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class TemperatureController {

    @Autowired
    private TemperatureRepository temperatureRepository;

    @RequestMapping(value = "temperature", method = RequestMethod.GET)
    public List<Temperature> list() {
        return temperatureRepository.findAll();
    }
}
