package com.zohocrm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Bill;
import com.zohocrm.entities.Contact;
import com.zohocrm.services.BillService;
import com.zohocrm.services.ContactService;

@Controller
public class BillingController {
	
	@Autowired
	private BillService billService;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/generateBill")
	public String viewBillPage(@RequestParam("id") long id, Model model) {
		Contact contact = contactService.getContactById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
	}
	
	@RequestMapping("/saveBill")
	public String saveBill(@ModelAttribute("bill") Bill bill, Model model) {
		billService.saveOneBill(bill);
		model.addAttribute("msg", "Bill is generated...!");
		return "generate_bill";
	}
}
