package net.sid.lauremontignyV2.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import net.sid.lauremontignyV2.entities.User;
@Entity
public class Role implements Serializable{
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String nomRole;
	private User user;
	public Role(String nomRole) {
		super();
		this.nomRole = nomRole;
	}
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNomRole() {
		return nomRole;
	}
	public void setNomRole(String nomRole) {
		this.nomRole = nomRole;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	

}
