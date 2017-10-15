package com.ecommerce1;

import java.security.Principal;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce2.ecommercebackend.Dao.CartDao;
import com.ecommerce2.ecommercebackend.Dao.ProductDao;
import com.ecommerce2.ecommercebackend.Dao.UserDao;
import com.ecommerce2.ecommercebackend.model.Cart;
import com.ecommerce2.ecommercebackend.model.CartItem;
import com.ecommerce2.ecommercebackend.model.Product;
import com.ecommerce2.ecommercebackend.model.User;

@Controller
public class HomeController {
	@Autowired
	ProductDao productDao;
	@Autowired
	UserDao userdao;
	@Autowired
	CartDao cartdao;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("/")
	public ModelAndView user() {

		ModelAndView model = new ModelAndView("home");

		return model;

	}

	
	@RequestMapping("/lamborgini")
	public ModelAndView productView() {
		Principal principal = request.getUserPrincipal();

		List<Product> list = productDao.getAll();
		ModelAndView model = new ModelAndView("product");
		model.addObject("prdList", list);
		if (principal != null) {
			model.addObject("name", principal.getName());
		}
		return model;
	}
	
	
	@RequestMapping("/ecommerce1/lamborgini/{id}")
	public ModelAndView show(@PathVariable("id") int id) {
		Product prod = productDao.getbyId(id);
		ModelAndView model = new ModelAndView("showproduct");
		model.addObject("product", prod);

		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid");
		}
		model.setViewName("login");

		return model;
	}

	@RequestMapping("/registerpage")
	public ModelAndView registerPage() {

		ModelAndView model = new ModelAndView("register");
		model.addObject("registration", new User());
		return model;
	}

	@PostMapping("/userSubmit")
	public ModelAndView userdetailsSubmit(@Valid @ModelAttribute("registration") User user,BindingResult  result) {
		Cart cart = new Cart();
		user.setRole("User");
		if(result.hasErrors()){
			//return "redirect:/registerpage";
			ModelAndView model1 = new ModelAndView("register");
			return model1;
		}
		if (userdao.insertUser(user)) {
			cart.setUser(user);
			cartdao.insertItem(cart);
		}
		return new ModelAndView("home");
	}

	}

