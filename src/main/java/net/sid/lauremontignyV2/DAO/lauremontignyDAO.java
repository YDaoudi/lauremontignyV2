package net.sid.lauremontignyV2.DAO;

import java.util.List;

import net.sid.lauremontignyV2.entities.*;

public interface lauremontignyDAO {
	public Long ajouterCategorie(Categorie c); 
	public List<Categorie> listCategories(); 
	public Categorie getCategorie(Long idCat); 
	public void supprimerCategorie(Long idcat); 
	public void modifierCategorie(Categorie c);

	public Long ajouterProduit(Produit	p, Long idCat); 
	public List<Produit> listproduits();
	public List<Produit> produitsParMotCle(String mc); 
	public List<Produit> produitsParCategorie(Long idCat); 
	public Produit getProduit(Long idP); 
	public void supprimerProduit(Long idP); 
	public void modifierProduit(Produit p);
	public List<Produit> produitsSelectionnes();

	
	public void ajouterUser(User u);
	public void attribuerRole(Role r,Long userID);
	public Commande enregistrerCommande(Panier p,Client c);
	
}
