package com.controler;

import com.model.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String getAllUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "user-list";
    }

    @GetMapping("/{id}")
    public String getUserById(@PathVariable(value = "id") Long userId, Model model) {
        User user = userService.getUserById(userId);
        model.addAttribute("user", user);
        return "user-detail";
    }

    @GetMapping("/new")
    public String createUserForm(Model model) {
        model.addAttribute("user", new User());
        return "create-user";
    }

    @PostMapping("/new")
    public String createUser(@RequestParam("name") String name,
                             @RequestParam("email") String email,
                             @RequestParam("phone_number") String phoneNumber) {
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPhone_number(phoneNumber);
        userService.createUser(user);
        return "redirect:/users";
    }

    @GetMapping("/edit/{id}")
    public String updateUserForm(@PathVariable(value = "id") Long userId, Model model) {
        User user = userService.getUserById(userId);
        model.addAttribute("user", user);
        return "edit-user";
    }

    @PostMapping("/edit/{id}")
    public String updateUser(@PathVariable(value = "id") Long userId, @ModelAttribute User userDetails) {
        userService.updateUser(userId, userDetails);
        return "redirect:/users";
    }


    @GetMapping("/delete")
    public String deleteUser(@RequestParam long userId) {
        userService.deleteUser(userId);
        return "redirect:/users";
    }

}
