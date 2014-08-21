package learnings.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import learnings.dao.UtilisateurDao;
import learnings.model.Utilisateur;

public class UtilisateurDaoImpl implements UtilisateurDao {

	private DataSource dataSource;

	public UtilisateurDaoImpl(DataSource dataSource) {
		super();
		this.dataSource = dataSource;
	}

	public List<Utilisateur> listerUtilisateurs() {
		List<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();
		try {
			Connection connection = dataSource.getConnection();
			Statement stmt = connection.createStatement();
			ResultSet results = stmt.executeQuery("SELECT id, email, admin FROM utilisateur ORDER BY email");
			while (results.next()) {
				utilisateurs.add(new Utilisateur(results.getLong("id"), results.getString("email"), results.getBoolean("admin")));
			}
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return utilisateurs;
	}

	@Override
	public Utilisateur getUtilisateur(Long id) {
		Utilisateur utilisateur = null;
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT id, email, admin FROM utilisateur WHERE id=?");
			stmt.setLong(1, id);
			ResultSet results = stmt.executeQuery();
			if (results.next()) {
				utilisateur = new Utilisateur(results.getLong("id"), results.getString("email"), results.getBoolean("admin"));
			}
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return utilisateur;
	}

	public Utilisateur getUtilisateur(String identifiant) {
		Utilisateur utilisateur = null;
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT id, email, admin FROM utilisateur WHERE email=?");
			stmt.setString(1, identifiant);
			ResultSet results = stmt.executeQuery();
			if (results.next()) {
				utilisateur = new Utilisateur(results.getLong("id"), results.getString("email"), results.getBoolean("admin"));
			}
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return utilisateur;
	}

	public String getMotDePasseUtilisateurHashe(String identifiant) {
		String motDePasse = null;
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement("SELECT motdepasse FROM utilisateur WHERE email=?");
			stmt.setString(1, identifiant);
			ResultSet results = stmt.executeQuery();
			if (results.next()) {
				motDePasse = results.getString("motdepasse");
			}
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return motDePasse;
	}

	@Override
	public void modifierMotDePasse(Long id, String motDePasse) {
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement("UPDATE utilisateur SET motdepasse=? WHERE id=?");
			stmt.setString(1, motDePasse);
			stmt.setLong(2, id);
			stmt.executeUpdate();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void supprimerUtilisateur(Long id) {
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement("DELETE FROM  utilisateur WHERE id=?");
			stmt.setLong(1, id);
			stmt.executeUpdate();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void modifierRoleAdmin(Long id, boolean admin) {
		try {
			Connection connection = dataSource.getConnection();
			PreparedStatement stmt = connection.prepareStatement("UPDATE utilisateur SET admin=? WHERE id=?");
			stmt.setBoolean(1, admin);
			stmt.setLong(2, id);
			stmt.executeUpdate();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
