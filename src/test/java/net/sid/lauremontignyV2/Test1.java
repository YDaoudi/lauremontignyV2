package net.sid.lauremontignyV2;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import net.sid.lauremontignyV2.entities.Categorie;
import net.sid.lauremontignyV2.entities.Produit;
import net.sid.lauremontignyV2.metier.IAdmin;



public class Test1 {
	@org.junit.Before
	public void setUp() throws Exception {
	}
	@Test
	public void test1() {
		try {
			ClassPathXmlApplicationContext context=
			new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
           IAdmin Metier =  (IAdmin) context.getBean("metier");
           List<Categorie> ctgs1 = Metier.listCategories();
           Metier.ajouterCategorie(new Categorie("Ordinateur","ordi",null, "image1.jpg"));
           Metier.ajouterCategorie(new Categorie("Imprimante","impr",null,"image2.jpg"));
           List<Categorie> ctgs2 = Metier.listCategories();
           assertTrue(ctgs1.size()+2==ctgs2.size());
		} catch (Exception e) {
			assertTrue(e.getMessage(),false);
			}

	}
	@Test
	public void test2() {
		try {
			ClassPathXmlApplicationContext context=
			new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
           IAdmin Metier = (IAdmin) context.getBean("metier");
           List<Produit> prod1 = Metier.listproduits();
           Metier.ajouterProduit(new Produit(1234, "DELL", 43, true, "image", 30), 1L);
           Metier.ajouterProduit(new Produit(1234,"Prod2",34,true,"image",6) ,1L);
           List<Produit> prod2 = Metier.listproduits();
           assertTrue(prod1.size()+2==prod2.size());
		} catch (Exception e) {
			assertTrue(e.getMessage(),false);
			}

	}
	
}