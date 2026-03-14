package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.dao.ItemDao;
import com.project.model.Item;

@Controller
public class ItemController {
	
	@Autowired
	private ItemDao itemDao;
	
	@RequestMapping("/addItem")
	public String addItem() {
		return "addItem";
	}
	
	@RequestMapping(value="/saveItem", method=RequestMethod.POST)
	public String saveItem(@ModelAttribute Item item, Model model) {
		itemDao.saveItem(item);
		model.addAttribute("msg", "Item saved Successfully!");
		return "addItem";
	}
	
	@RequestMapping("/viewItems")
	public String viewItems(Model model) {
		List<Item> items = itemDao.getAllItems();
		model.addAttribute("items", items);
		return "viewItems";
	}
	
	@RequestMapping("/markReturned")
	public String markReturned(@RequestParam("id") int id) {
		itemDao.markReturned(id);
		return "redirect:/viewItems";
	}
	
	@RequestMapping("/searchItem")
	public String searchItem(@RequestParam("item_name") String name, Model model) {
		List<Item> items = itemDao.searchItem(name);
		model.addAttribute("items", items);
		return "viewItems";
	}
	
	@RequestMapping("/deleteItem")
	public String deleteItem(@RequestParam("id")int id) {
		itemDao.deleteItem(id);
		return "redirect:/viewItems";
	}
	
	@RequestMapping("/editItem")
	public String editItem(@RequestParam("id") int id, Model model) {
		Item item = itemDao.getItemById(id);
		model.addAttribute("item", item);
		return "editItem";
	}
	
	@RequestMapping(value="/updateItem", method=RequestMethod.POST)
	public String updateItem(@ModelAttribute Item item) {
		itemDao.updateItem(item);
		return "redirect:/viewItems";
	}
}
