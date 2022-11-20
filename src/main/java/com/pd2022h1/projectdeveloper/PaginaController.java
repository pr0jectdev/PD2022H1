package com.pd2022h1.projectdeveloper;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PaginaController{
	@GetMapping("/pagina")
	public String pagina() {
		return "hello pagina";
	}
}