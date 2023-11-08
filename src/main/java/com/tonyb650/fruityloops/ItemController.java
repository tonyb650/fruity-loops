package com.tonyb650.fruityloops;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemController {
	
	@RequestMapping("/")
	public String index(Model model) {
		
		ArrayList<Item> fruits = new ArrayList<Item>();
		fruits.add(new Item("Kiwi", 1.5));
		fruits.add(new Item("Mango", 1.5));
		fruits.add(new Item("Goji Berries", 1.5));
		fruits.add(new Item("Durian", 1.5));
		model.addAttribute("fruits", fruits);
		model.addAttribute("firstChar", 'G');

		return "index.jsp";
	}
}
