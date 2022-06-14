package Controleur;



import java.util.ArrayList;

import Modele.Modele;

public class Controleur {

		public static ArrayList<Don> selectAllDons()
	{
		ArrayList<Don> lesDons = Modele.selectAllDons(); 
		//ici on fait les controles sur les données avant de les 
		// envoyer a la vue. 
		return lesDons; 
	}
	public static void insertDon(Don unDon)
	{
		Modele.insertDon(unDon);
	}
	public static void deleteDon(int idIncident)
	{
		Modele.deleteDon(idIncident);
	}
	public static Don selectWhere(int idIncident)
	{
		return Modele.selectWhere(idIncident);
	}
	public static void updateDon(Don unDon)
	{
		Modele.updateDon(unDon);
	}
	public static User selectWhereUser(String email,String mdp)
	{
		return Modele.selectWhereUser(email, mdp); 
	}
	
	
}

