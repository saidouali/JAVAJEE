package Modele;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Controleur.Don;
import Controleur.User;

public class Modele {
	private static Bdd uneBdd = new Bdd("localhost:","don_asso",
			"root", "");
 
		    public static ArrayList<Don> selectAllDons ()
			{
				ArrayList<Don> lesDons = new ArrayList<Don>();
				String requete = "select * from don ;"; 
				try {
					uneBdd.seConnecter();
					Statement unStat = uneBdd.getMaConnexion().createStatement(); 
					ResultSet desRes = unStat.executeQuery(requete); 
					while (desRes.next())
					{
						Don unDon = new Don(desRes.getString("nom"),
							    desRes.getString("prenom"),
								desRes.getString("designation"), 
								desRes.getInt("idincident"), 
								desRes.getFloat("montant")); 
						lesDons.add(unDon);
					}
					unStat.close();
					desRes.close();
					uneBdd.seDeconnecter();
				}
				catch(SQLException exp) {
					System.out.println("Erreur Execution : " + requete);
				}
				return lesDons;
			}
			public static void insertDon(Don unDon)
			{
				String requete ="insert into don values (null,'"
				        +unDon.getNom()+"','"
						+unDon.getPrenom()+"','"
						+unDon.getDesignation()+"','"
						+unDon.getMontant()+"'); "; 
				try {
					uneBdd.seConnecter();
					Statement unStat = uneBdd.getMaConnexion().createStatement(); 
					unStat.execute(requete); 
					unStat.close();
					uneBdd.seDeconnecter();
				}
				catch(SQLException exp) {
					System.out.println("Erreur de la requete :"+requete);
				}
			}
			public static void deleteDon (int idIncident)
			{
				String requete ="delete from don where idincident = "+idIncident;
				try {
					uneBdd.seConnecter();
					Statement unStat = uneBdd.getMaConnexion().createStatement(); 
					unStat.execute(requete); 
					unStat.close();
					uneBdd.seDeconnecter();
				}
				catch(SQLException exp) {
					System.out.println("Erreur de la requete :"+requete);
				}
			}
			
			public static Don selectWhere (int idIncident)
			{
				Don unDon = null; 
				String requete = "select * from don where idincident ="+idIncident; 
				try {
					uneBdd.seConnecter();
					Statement unStat = uneBdd.getMaConnexion().createStatement(); 
					ResultSet desRes = unStat.executeQuery(requete); 
					if (desRes.next())
					{
						 unDon = new Don (desRes.getString("nom"),
						        desRes.getString("prenom"),
							    desRes.getString("designation"), 
								desRes.getInt("idincident"),
								desRes.getFloat("montant")); 
						 
					}
					unStat.close();
					desRes.close();
					uneBdd.seDeconnecter();
				}
				catch(SQLException exp) {
					System.out.println("Erreur Execution : " + requete);
				}
				return unDon;
			}
			public static void updateDon (Don unDon) {
				String requete ="update Don set nom ='"
		               +unDon.getNom()+"', prenom = '"
					   +unDon.getPrenom()+"', designation = '"
					   +unDon.getDesignation()+"', montant='"
					   +unDon.getMontant()
					   +"' where idIncident =" + unDon.getIdincident()+"; "; 
				try {
					uneBdd.seConnecter();
					Statement unStat = uneBdd.getMaConnexion().createStatement(); 
					unStat.execute(requete); 
					unStat.close();
					uneBdd.seDeconnecter();
				}
				catch(SQLException exp) {
					System.out.println("Erreur de la requete :"+requete);
				}
			}
			
			public static User selectWhereUser(String email,String mdp)
			{
				User unUSer = null; 
				String requete = "select * from user where "
						+ " email ='"+email+"' and mdp='"+mdp+"';";
				try {
					uneBdd.seConnecter();
					Statement unStat = uneBdd.getMaConnexion().createStatement(); 
					ResultSet desRes = unStat.executeQuery(requete); 
					if (desRes.next())
					{
						unUSer = new User(desRes.getString("nom"), 
								desRes.getString("prenom"), desRes.getString("email"),
								desRes.getString("mdp"),desRes.getString("role")); 
						 
					}
					unStat.close();
					desRes.close();
					uneBdd.seDeconnecter();
				}
				catch(SQLException exp) {
					System.out.println("Erreur Execution : " + requete);
				}
				return unUSer;
			}
			
			}


