package com.controler;

import com.model.GlycemiaReading;
import com.model.User;
import com.service.GlycemiaService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Controller
@RequestMapping("/")
public class GlycemiaController {

    private final GlycemiaService service;
    private final UserService userService;

    @Autowired
    public GlycemiaController(GlycemiaService service, UserService userService) {
        this.service = service;
        this.userService = userService;
    }

    @GetMapping("/add")
    public String addReadingForm(Model model) {
        model.addAttribute("reading", new GlycemiaReading());
        return "add-reading";
    }

    @PostMapping("/add")
    public String addReadingSubmit(@RequestParam("level") float levelValue,
                                   @RequestParam("date") String date,
                                   @RequestParam("time") String time,
                                   @RequestParam("user_id") int userId) {
        LocalDate localDate = LocalDate.parse(date);
        LocalTime localTime = LocalTime.parse(time);

        GlycemiaReading reading = new GlycemiaReading();
        reading.setDate(localDate);
        reading.setTime(localTime);
        reading.setLevel(levelValue);

        User user = userService.getUserById(userId);
        reading.setUser(user);

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
    @GetMapping("/glucose-chart")
    public String showGlucoseChart(Model model) {
        List<GlycemiaReading> glucoseReadings = service.getAllReadings();
        model.addAttribute("glucoseReadings", glucoseReadings);
        return "chart-glucose";
    }
}

