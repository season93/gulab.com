package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gulab.backend.DAO.UserDao;
import com.gulab.backend.models.UserModel;

@Controller
public class AppController {
	
	@Autowired
	UserDao userdao;
	
	@RequestMapping(value="/")
	public String open()
	{
		return "LandingPage";
	}
	@RequestMapping(value="LandingPage")
	public String landing()
	{
		return "LandingPage";
	}
	@RequestMapping(value="News")
	public String news()
	{
		return "News";
	}
	@RequestMapping(value="ClientPage")
	public String client()
	{
		return "ClientPage";
	}
	@RequestMapping(value="AboutUsPage")
	public String aboutus()
	{
		return "AboutUsPage";
	}
	@RequestMapping(value="RegistrationPage")
	public String registration(Model model)
	{
		UserModel usermodel= new UserModel();
		model.addAttribute("user", usermodel);
		return "RegistrationPage";
	}
	@RequestMapping(value="DriverDetails")
	public String saveDriver(@ModelAttribute("user")UserModel user)
	{
		userdao.addDriver(user);
		System.out.println(user.getBankname());
		return "LandingPage";
	}
	@RequestMapping(value="admin")
	public String admin()
	{
		return "AdminLoginPage";
	}
	@RequestMapping(value="AdminPage")
	public String adminPage(@RequestParam("admin_name")String name,@RequestParam("password")String password)
	{
		if((name=="niit")&&(password=="niit")) {
		return "AdminControl";}
		else {
			return "AdminControl";}
	}
	@RequestMapping(value="SearchId")
	public ModelAndView searchId(@RequestParam("search_id")int id)
	{
		List<UserModel> user=userdao.searchId(id);
		ModelAndView model=new ModelAndView("Details","user",user);
		return model;
	}
	@RequestMapping(value="SearchName")
	public ModelAndView searchName(@RequestParam("search_name")String name)
	{
		List<UserModel> user=userdao.searchName(name);
		ModelAndView model=new ModelAndView("Details","user",user);
		return model;
	}

}
