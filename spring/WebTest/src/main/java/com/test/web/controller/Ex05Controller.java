package com.test.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.web.model.AddressDTO;

@Controller
public class Ex05Controller {

	@RequestMapping(value="/ex05.do")
	public String ex05() {
		
		return "ex05";
	}
	
	/*
	//doGet or doPost
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(HttpServletRequest req) {
		
		String data = req.getParameter("data");
		
		System.out.println(data);
		
		req.setAttribute("data", data);
		
		return "ex05ok";
	}
	*/
	
	/*
	 
	 	파라미터 자동 수집
	 
	 */
	
	/*
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(@RequestParam(name="data", defaultValue="기본값") String data, Model model) { //model이 앞에 있어도 노상관 순서 노상관
		
		//list.do?page=1
		//list.do
		
		//String data = req.getParameter("data");
		System.out.println(data);
		
		//req.setAttribute("data", data);
		model.addAttribute("data", data);
		
		
		return "ex05ok";
	}
	*/
	/*
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(String num, Model model) { //@RequestParam(name="num") 생략하려면 리스트명? 같아야함 > 자동 파라미터 수집
		
		System.out.println(num);
		
		model.addAttribute("data", num);
		
		
		return "ex05ok";
	}
	*/
	/*
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(
							Model model,
							@RequestParam("name") String name,
							@RequestParam("age") String age,
							@RequestParam("address") String address
						)  {
		
		//req.setCharacterEncoding("UTF-8");
		
		AddressDTO dto = new AddressDTO();
		
		dto.setName(name);
		dto.setAge(age);
		dto.setAddress(address);
		
		model.addAttribute("dto", dto);
		
		return "ex05ok";
	}
	*/
	/*
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(
					Model model,
					String name,
					String age,
					String address
			)  {
		
		//req.setCharacterEncoding("UTF-8");
		
		AddressDTO dto = new AddressDTO();
		
		dto.setName(name);
		dto.setAge(age);
		dto.setAddress(address);
		
		model.addAttribute("dto", dto);
		
		return "ex05ok";
	}
	*/
	/*
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(Model model, AddressDTO dto, int seq)  {
		
		model.addAttribute("dto", dto);
		
		System.out.println(seq + 10);
		
		return "ex05ok";
	}
	*/
	/*
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	public String ex05ok(Model model, 
						//@RequestParam("cb") String[] cb
						//String[] cb
						@RequestParam("cb") ArrayList<String> list
						//ArrayList<String> list 	> 동작(X)
						)  {
		
		//java,python,basic
		//java,basic
		//[java, python, basic]
		//System.out.println(Arrays.toString(cb));
		System.out.println(list);
		
		return "ex05ok";
	}
	*/
	
	@RequestMapping(value="/ex05ok.do", method = RequestMethod.POST)
	//public String ex05ok(@RequestParam("data") String data, Model model) {
	//public String ex05ok(@ModelAttribute("data") String data) {
	public String ex05ok(@ModelAttribute("dto") AddressDTO dto) {

		
		return "ex05ok";
	}
	
}
