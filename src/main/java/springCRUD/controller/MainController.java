package springCRUD.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import springCRUD.dao.ProductDAO;
import springCRUD.model.Product;

@Controller
public class MainController {
	
	@Autowired
    private ProductDAO	productDAO;
	
	@RequestMapping("/home")
	public String home(Model m) {
		
		List<Product> products=productDAO.getProducts();
		System.out.println(products);
	    m.addAttribute("products",products);
		return "home";
	}

	@RequestMapping(value="handle-product",method=RequestMethod.POST)
	public RedirectView handleProdcut(@ModelAttribute Product product,HttpServletRequest request) {
		productDAO.createProduct(product);
		RedirectView redirectView =new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId")int productId,HttpServletRequest request) {
		
		this.productDAO.deleteProduct(productId);
		RedirectView redirectView =new RedirectView();
		redirectView.setUrl(request.getContextPath()+"home");
		return redirectView;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model m) {
		
		Product product =this.productDAO.getProduct(pid);
		m.addAttribute("product",product);
		return "updateForm";
		
	}
}
