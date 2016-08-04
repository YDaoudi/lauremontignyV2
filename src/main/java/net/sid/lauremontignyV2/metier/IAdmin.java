package net.sid.lauremontignyV2.metier;

import net.sid.lauremontignyV2.entities.*;

public interface IAdmin extends IClient{
	public Long ajouterProduit(Produit	p, Long idCat); 
	public void supprimerProduit(Long idP);
	public void modifierProduit(Produit p);
	public Long ajouterCategorie(Categorie c);
	public void supprimerCategorie(Long idcat); 
	public void modifierCategorie(Categorie c); 
	public void ajouterUser(User u);
	public void attribuerRole(Role r,Long userID);


}
