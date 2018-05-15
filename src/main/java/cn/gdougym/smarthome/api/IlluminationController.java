package cn.gdougym.smarthome.api;

import cn.gdougym.smarthome.model.Illumination;
import cn.gdougym.smarthome.repository.IlluminationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class IlluminationController {

    @Autowired
    private IlluminationRepository illuminationRepository;

    @RequestMapping(value = "illumination", method = RequestMethod.GET)
    public List<Illumination> list() {
        return illuminationRepository.findAll();
    }
}
