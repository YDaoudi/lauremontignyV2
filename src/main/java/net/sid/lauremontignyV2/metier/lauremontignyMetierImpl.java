package net.sid.lauremontignyV2.metier;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import net.sid.lauremontignyV2.entities.Categorie;
import net.sid.lauremontignyV2.entities.Client;
import net.sid.lauremontignyV2.entities.Commande;
import net.sid.lauremontignyV2.entities.Panier;
import net.sid.lauremontignyV2.entities.Produit;
import net.sid.lauremontignyV2.entities.Role;
import net.sid.lauremontignyV2.entities.User;
import net.sid.lauremontignyV2.DAO.lauremontignyDAO;

@Transactional
public class lauremontignyMetierImpl implements IAdmin{

	private lauremontignyDAO dao; 
    
	public void setDao(lauremontignyDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<Categorie> listCategories() {
		// TODO Auto-generated method stub
		return dao.listCategories();
	}

	@Override
	public Categorie getCategorie(Long idCat) {
		// TODO Auto-generated method stub
		return dao.getCategorie(idCat);
	}

	@Override
	public List<Produit> listproduits() {
		// TODO Auto-generated method stub
		return dao.listproduits();
	}

	@Override
	public List<Produit> produitsParMotCle(String mc) {
		// TODO Auto-generated method stub
		return dao.produitsParMotCle(mc);
	}

	@Override
	public List<Produit> produitsParCategorie(Long idCat) {
		// TODO Auto-generated method stub
		return dao.produitsParCategorie(idCat);
	}

	@Override
	public Produit getProduit(Long idP) {
		// TODO Auto-generated method stub
		return dao.getProduit(idP);
	}

	@Override
	public Long ajouterProduit(Produit p, Long idCat) {
		// TODO Auto-generated method stub
		return dao.ajouterProduit(p, idCat);
	}

	@Override
	public void supprimerProduit(Long idP) {
		// TODO Auto-generated method stub
		dao.supprimerProduit(idP);
	}

	@Override
	public void modifierProduit(Produit p) {
        
		dao.modifierProduit(p);		
	}

	@Override
	public Long ajouterCategorie(Categorie c) {
		// TODO Auto-generated method stub
		return dao.ajouterCategorie(c);
	}

	

	@Override
	public void modifierCategorie(Categorie c) {
		// TODO Auto-generated method stub
		dao.modifierCategorie(c);
	}

	@Override
	public void ajouterUser(User u) {
		// TODO Auto-generated method stub
		dao.ajouterUser(u);
	}

	@Override
	public void attribuerRole(Role r, Long userID) {
		// TODO Auto-generated method stub
		dao.attribuerRole(r, userID);
	}

	

	

	@Override
	public List<Produit> produitsSelectionnes() {
		// TODO Auto-generated method stub
		return dao.produitsSelectionnes();
	}

	@Override
	public Commande enregistrerCommande(Panier p, Client c) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void supprimerCategorie(Long idcat) {
		// TODO Auto-generated method stub
		dao.supprimerCategorie(idcat);

	}

}
