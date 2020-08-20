package co.grandcircus.lab22;

import org.springframework.stereotype.Controller;
import java.awt.TextArea;
import java.util.List;
import org.springframework.expression.spel.ast.Selection;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {

		return "index";
	}

//			SPECIALTY PIZZA #1 - BBQ CHICKEN

	@RequestMapping("/specialpizza-bbq")
	public String showBbqForm() {

		return "specialpizza-bbq";
	}

	@RequestMapping("/specialpizza-bbq")
	public String showBBQ(Model model, @RequestParam("pizza1") String pizza1, @RequestParam("price") double price) {

		bbqPizza bbqpizza = new bbqPizza(pizza1, price);

		model.addAttribute("pizza1", pizza1);
		model.addAttribute("price", price);
		model.addAttribute("bbqPizza", bbqpizza);

		return "specialpizza-bbq";
	}

//			SPECIALTY PIZZA #2 - MAC AND CHEESE

	@RequestMapping("/specialpizza-mac")
	public String showMacForm() {

		return "specialpizza-mac";
	}

	@RequestMapping("/specialpizza-mac")
	public String showMac(Model model, @RequestParam("macpizza") String macpizza, @RequestParam("price") double price) {

		model.addAttribute("macpizza", macpizza);
		model.addAttribute("price", price);

		return "specialpizza-mac";
	}

//			SPECIALTY PIZZA #3 - BREAKFAST

	@RequestMapping("/specialpizza-brk")
	public String showBrkForm() {

		return "specialpizza-brk";
	}

	@RequestMapping("/specialpizza-brk")
	public String showBrk(Model model, @RequestParam("brkpizza") String brkpizza, @RequestParam("price") double price) {

		model.addAttribute("brkpizza", brkpizza);
		model.addAttribute("price", price);

		return "specialpizza-brk";
	}

	@PostMapping("/pizzabuilder-form")
	public String submitPizzaForm(Model model, @RequestParam(name = "size", required = false) Selection size,
			@RequestParam(name = "toppings", defaultValue = "") List<String> toppings,
			@RequestParam("toppingcount") int toppingcount, @RequestParam("gluten-free crust") Selection glutenfree,
			@RequestParam("specialinstructions") TextArea specialinstructions) {

		// use Expression Language to access data ${meat}
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("toppingcount", toppingcount);
		model.addAttribute("gluten-free crust", glutenfree);
		model.addAttribute("specialinstructions", specialinstructions);

		return "pizzabuilder-result";
	}

	@RequestMapping("/pizzabuilder-form")
	public String showPizzaForm() {

		return "pizzabuilder-form";
	}

	// REVIEW FORM
	@RequestMapping("/review-form")
	public String showReviewForm() {

		return "review-form";
	}

	// only handles POST requests
	// parameter values are submitted in body
	@PostMapping("/review-form")
	public String submitReviewForm(Model model, @RequestParam(name = "name", required = false) String name,
			@RequestParam(name = "comment") TextArea comment, @RequestParam(name = "rating") Selection rating) {

		// use Expression Language to access data ${meat}
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);

		return "review-result";
	}

	@RequestMapping("/review-result")
	public String showReviewResult() {

		return "review-result";
	}

}
