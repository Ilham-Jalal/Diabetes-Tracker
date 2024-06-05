package com.controler;

import com.model.GlycemiaReading;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.service.GlycemiaService;

import java.util.List;

@Controller
@RequestMapping("/")
public class glycemiaController {

    private final GlycemiaService service;

    public glycemiaController(GlycemiaService service) {
        this.service = service;
    }

    @GetMapping("/add")
    public String addReadingForm(Model model) {
        model.addAttribute("reading", new GlycemiaReading());
        return "add-reading";
    }

    @PostMapping("/add")
    public String addReadingSubmit(@ModelAttribute GlycemiaReading reading) {
        service.addReading(reading);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteReading(@PathVariable long id) {
        service.deleteReading(id);
        return "redirect:/";
    }

    @GetMapping
    public String getAllReadings(Model model) {
        List<GlycemiaReading> readings = service.getAllReadings();
        model.addAttribute("readings", readings);
        return "index";
    }
}
