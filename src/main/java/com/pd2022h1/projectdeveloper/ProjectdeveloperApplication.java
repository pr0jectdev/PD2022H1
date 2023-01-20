package com.pd2022h1.projectdeveloper;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class ProjectdeveloperApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectdeveloperApplication.class, args);
	}

	@GetMapping("/")
	public String index() {
		return "Projeto Java - Teste CI/CD 20/01/23";
	}

}
