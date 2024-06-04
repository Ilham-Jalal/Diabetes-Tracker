package com.controler;

import com.model.GlycemiaReading;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.service.GlycemiaService;

import java.util.List;


@Controller
@RequestMapping("")
public class GlycemiaContoller {

    private final GlycemiaService service;

    public GlycemiaContoller(GlycemiaService service) {
        this.service = service;
    }

    @GetMapping("/add")
    public String addReadingForm(Model model) {
        model.addAttribute("reading", new com.model.GlycemiaReading());
        return "add-reading-form";
    }

    @PostMapping
    public String addReadingSubmit(@ModelAttribute GlycemiaReading reading) {
        service.addReading(reading);
        return "index";
    }

    @GetMapping("/delete/{id}")
    public String deleteReading(@PathVariable long id) {
        service.deleteReading(id);
        return "";
    }

    @GetMapping
    public String getAllReadings() {
        List<GlycemiaReading> readings = service.getAllReadings();
        return "";
    }

}
