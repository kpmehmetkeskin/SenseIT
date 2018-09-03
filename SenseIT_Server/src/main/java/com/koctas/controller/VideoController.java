package com.koctas.controller;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class VideoController {

	public static Integer VALUE = 1; 
	
	@RequestMapping("/index")
	public void index(@RequestParam("value") String value, Model model, HttpSession session) {
		
	    BufferedWriter writer;
		try {
			writer = new BufferedWriter(new FileWriter("C://1.txt", true));
			writer.append('1');
			writer.close();		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
