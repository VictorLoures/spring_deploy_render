package com.example.render;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RenderController {

    @GetMapping("/")
    public String helloWorld() {
        return "Projeto Spring simples para deploy no Render :)";
    }
}
