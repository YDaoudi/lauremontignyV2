package net.sid.lauremontignyV2.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import net.sid.lauremontignyV2.metier.IAdmin;
import net.sid.lauremontignyV2.entities.Categorie;
import net.sid.lauremontignyV2.entities.Produit;
import net.sid.lauremontignyV2.entities.*;

@Controller
@RequestMapping(value="/admin")
@SessionAttributes("editedCat")
public class AdminController  {
	@Autowired
    private IAdmin metier;
	
	@RequestMapping(value="/Accueil")
	public String Accueil(Model model){
		
		return "home-fullscreen";
		
	}
	@RequestMapping(value="/categorie")
	public String index(Model model){
		model.addAttribute("categorie",new Categorie());
		model.addAttribute("categories",metier.listCategories());
		return "categories";
		
	}
	@RequestMapping(value="/produit")
	public String indexP(Model model){
	model.addAttribute("produit",new Produit());
	model.addAttribute("produits",metier.listproduits());
	model.addAttribute("categories",metier.listCategories());
	return "produits";
	}

	@RequestMapping(value="/saveCat")
		public String saveCat(@Valid Categorie c,BindingResult bindingResult, Model model,MultipartFile file ) throws IOException{
			if(bindingResult.hasErrors()) {
				model.addAttribute("categorie",new Categorie());
				model.addAttribute("categories",metier.listCategories());
				return("categories");	
		}
			if(!file.isEmpty()){
				BufferedImage bi =ImageIO.read(file.getInputStream());
				c.setPhoto(file.getBytes());
	            c.setNomPhoto(file.getOriginalFilename());
			}
				if(c.getIdCategorie()!=null){
					if(model.asMap().get("editedCat")!=null)
					{ if(file.isEmpty())
					{
						Categorie cat=(Categorie)model.asMap().get("editedCat");
						c.setPhoto(cat.getPhoto());
					}
						
					}
				metier.modifierCategorie(c);
				
			}
			else
			metier.ajouterCategorie(c);
			model.addAttribute("categorie",new Categorie());
			model.addAttribute("categories",metier.listCategories());
			return "categories";
		}



	@RequestMapping(value="/saveProd")
	public @ResponseBody String saveProd(@Valid Produit p,BindingResult bindingResult, Model model,MultipartFile file ) throws IOException{
		if(bindingResult.hasErrors()) {
			model.addAttribute("produits",metier.listproduits());
			model.addAttribute("categories",metier.listCategories());
			return("produits");	
	}
		
		if(!file.isEmpty()){
			BufferedImage bi =ImageIO.read(file.getInputStream());
			p.setPhoto(file.getBytes());
            p.setNomPhoto(file.getOriginalFilename());		}

		if(p.getIdProduit()!=null){
			if(model.asMap().get("editedCat")!=null)
			{ if(file.isEmpty())
			{
				Produit prod=(Produit)model.asMap().get("editedCat");
				p.setPhoto(prod.getPhoto());
			}
				
			}
		metier.modifierProduit(p);;
		}
		else{
			metier.ajouterProduit(p, p.getCategorie().getIdCategorie());
		}
		model.addAttribute("produit",new Produit());
		model.addAttribute("produits",metier.listproduits());
		model.addAttribute("categories",metier.listCategories());

		return "produits";
	}





	@RequestMapping(value="/photoCat",produces=org.springframework.http.MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhotoC(Long idCat) throws IOException{ 
		Categorie c=metier.getCategorie(idCat); 
		//if(c.getPhoto()==null) 
			//return new byte[0];
	return IOUtils.toByteArray(new ByteArrayInputStream(c.getPhoto()));
	}


	@RequestMapping(value="/photoProd",produces=org.springframework.http.MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhotoP(Long idProd) throws IOException{ 
		Produit p=metier.getProduit(idProd); 
		/*if(c.getPhoto()==null) 
			return new byte[0];*/
	return IOUtils.toByteArray(new ByteArrayInputStream(p.getPhoto()));
	}





	@RequestMapping(value="/suppCat")
	public String SuppCat(Long idCat,Model model){
		metier.supprimerCategorie(idCat);
	model.addAttribute("categorie",new Categorie());
	model.addAttribute("categories",metier.listCategories());
	return "categories";
	}


	@RequestMapping(value="/suppProd")
	public String SupProd(@ModelAttribute("produit")Long idProd,Model model){
		metier.supprimerProduit(idProd);
	model.addAttribute("produit",new Produit());
	model.addAttribute("produits",metier.listproduits());
	model.addAttribute("categories",metier.listCategories());
	return "produits";
	}





	@RequestMapping(value="/editCat")
	public String editCat(Long idCat,Model model){
		
		Categorie c =metier.getCategorie(idCat);

	model.addAttribute("categorie",c);
	model.addAttribute("categories",metier.listCategories());
	return "categories";
	}


	@RequestMapping(value="/editProd")
	public String editProd(@ModelAttribute("produit")Long idProd,Model model){
		Produit p=metier.getProduit(idProd);

	model.addAttribute("produit",p);
	model.addAttribute("produits",metier.listproduits());
	model.addAttribute("categories",metier.listCategories());
	return "produits";
	}

	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object object, Exception exp) {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		mv.addObject("exception", exp.getMessage());
		mv.setViewName("categorie");
		return mv;
	}

	
}
