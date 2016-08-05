package net.sid.lauremontignyV2.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;

import net.sid.lauremontignyV2.entities.Categorie;
@Entity
public class Produit implements Serializable {
     @Id
     @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idProduit;
     
    private int reference;
     @NotEmpty
	private String description; 
	private double prix;
	private boolean selected;
	@Lob
	private byte[] photo;
	private String nomPhoto;
	@ManyToOne
	@JoinColumn(name="idCategorie")
	private Categorie categorie;
	private int quantite ;
	
	public Produit(int reference, String description, double prix, boolean selected,
			byte[] photo, int quantite,String nomPhoto) {
		super();
		this.reference = reference;
		this.description = description;
		this.prix = prix;
		this.selected = selected;
		this.photo = photo;
		this.quantite = quantite;
		this.nomPhoto = nomPhoto;

	}
	public String getNomPhoto() {
		return nomPhoto;
	}
	public void setNomPhoto(String nomPhoto) {
		this.nomPhoto = nomPhoto;
	}
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(Long idProduit) {
		this.idProduit = idProduit;
	}
	
	public int getReference() {
		return reference;
	}
	public void setReference(int reference) {
		this.reference = reference;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public boolean isSelected() {
		return selected;
	}
	public void setSelected(boolean selected) {
		this.selected = selected;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	
}
