package Controleur;

public class Don {
	private String nom, prenom, designation;
	private int idincident;
	private float montant;
	
	
	public Don(String nom, String prenom, String designation, int idincident, float montant) {
		this.nom = nom;
		this.prenom = prenom;
		this.designation = designation;
		this.idincident = idincident;
		this.montant = montant;
	}
	
	public Don(String nom, String prenom, String designation, float montant) {
		this.nom = nom;
		this.prenom = prenom;
		this.designation = designation;
		this.idincident = 0;
		this.montant = montant;
	}
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getIdincident() {
		return idincident;
	}
	public void setIdincident(int idincident) {
		this.idincident = idincident;
	}
	public float getMontant() {
		return montant;
	}
	public void setMontant(float montant) {
		this.montant = montant;
	}
	
	
}
