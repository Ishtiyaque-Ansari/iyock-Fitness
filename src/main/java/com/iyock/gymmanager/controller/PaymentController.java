package com.iyock.gymmanager.controller;

import java.util.Map;

import org.json.JSONObject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;

@RestController
@RequestMapping("/payment")
public class PaymentController {
	
	// creating order for payment
	@ResponseBody
	@PostMapping("/create_order")
	public String createOrder(@RequestBody Map<String, Object> data) throws Exception {

		/* System.out.println("Hey order function ex."); */
		System.out.println(data);

		int amt = Integer.parseInt(data.get("amount").toString());

		var client = new RazorpayClient("rzp_test_XoGbkBgu4fBcVL", "wQMyLlS5DxI7XvZoHUJGkgE1");

		JSONObject ob = new JSONObject();
		ob.put("amount", amt * 100);
		ob.put("currency", "INR");
		ob.put("receipt", "txn_214142");

		// creating new order

		Order order = client.orders.create(ob);
		System.out.println(order);

		// if you want you can save this to your data..
		return order.toString();
	}
}
