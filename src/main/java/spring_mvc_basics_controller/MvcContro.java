package spring_mvc_basics_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring_mvc_basics_dao.MvcDao;
import spring_mvc_basics_dto.MvcDto;

@Controller
public class MvcContro {

	@Autowired
	MvcDao dao;

	@RequestMapping("/loginpage")
	@ResponseBody
	public ModelAndView insert(@ModelAttribute MvcDto m) {
		int id = m.getId();
		String name = m.getName();
		String passwd = m.getPasswd();

		System.out.println(id + " " + name + "  " + passwd);
		dao.insert(m);
		if(dao!=null)
		{
			ModelAndView mav= new ModelAndView("account_msg.jsp");
			mav.addObject("key1",dao);
			return mav;
		}
		else {
			ModelAndView mav= new ModelAndView("account_msg1.jsp");
			mav.addObject("key2",dao);
			return mav;
		}
		
	}

	@RequestMapping("/delete")
	@ResponseBody
	public void delete(@ModelAttribute MvcDto d2) {
		int id1 = d2.getId();
		dao.delete(id1);
		System.out.println("data deleted");
	}

	@RequestMapping("/fetchall")
	@ResponseBody
	public ModelAndView fetchAllAccount() {
		List<MvcDto> list = (List<MvcDto>) dao.fetchAll();
		ModelAndView view = new ModelAndView("fetchall.jsp");
		view.addObject("object", list);
		return view;
	}

	@RequestMapping("/fetchbyid")
	@ResponseBody

	public ModelAndView fetchById(@ModelAttribute MvcDto d3) {
		int id2 = d3.getId();
		MvcDto id3 = dao.fetchById(id2);
		System.out.println(id3);

		ModelAndView mav = new ModelAndView("displayid.jsp");
		mav.addObject("object", id3);
		System.out.println(mav);
		return mav;
	}

	@ResponseBody
	@RequestMapping("/deleteall")
	public String deleteall() {
		String p = dao.deleteAll();
		return p;
	}

	@RequestMapping("/update")
	public ModelAndView update(@ModelAttribute MvcDto dto) {
		dao.update(dto);
		Object l = dao.fetchAll();
		ModelAndView mav = new ModelAndView("fetchall.jsp");
		mav.addObject("object", l);
		return mav;
	}

	@RequestMapping("/logining")
	@ResponseBody
	public ModelAndView home(@ModelAttribute MvcDto dto) {
		int id = dto.getId();
		String passwd = dto.getPasswd();
		System.out.println(id + "  " + passwd);
		Object h = dao.home(id);
		System.out.println(h);
		if (h.equals(passwd)) {
			ModelAndView ma = new ModelAndView("homepage.jsp");
			ma.addObject("object", h);
			return ma;
		} else {
			ModelAndView m = new ModelAndView("vpass.jsp");
			m.addObject("object", h);
			return m;
		}

	}

}
