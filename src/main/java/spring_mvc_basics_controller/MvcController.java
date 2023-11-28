package spring_mvc_basics_controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.DispatcherServlet;

@Controller
public class MvcController {
	@RequestMapping("/insert1")
	@ResponseBody
	public String insert() {
		System.out.println("data inserted");
		return "yes it's done";
	}

	@RequestMapping("/delete1")
	public void delete() {
		System.out.println("data deleted");
	}
	
}
