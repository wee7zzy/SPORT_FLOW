package dao;

import model.utilisateurs;
import utils.DBcnx;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class utilisateurDAO {

    public boolean ajoutUser(utilisateurs user) {
        String checkUserSQL = "SELECT COUNT(*) FROM utilisateurs WHERE email = ?";
        String insertUserSQL = "INSERT INTO utilisateurs (name, email, password, role) VALUES (?, ?, ?, ?)";

        try (Connection cnx = DBcnx.getConnection();
             PreparedStatement checkStmt = cnx.prepareStatement(checkUserSQL);
             PreparedStatement insertStmt = cnx.prepareStatement(insertUserSQL)) {

            checkStmt.setString(1, user.getEmail());
            ResultSet rs = checkStmt.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                return false; // Email déjà utilisé
            }

            insertStmt.setString(1, user.getNom());
            insertStmt.setString(2, user.getEmail());
            insertStmt.setString(3, user.getPassword());
            insertStmt.setString(4, user.getRole());

            return insertStmt.executeUpdate() > 0;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public utilisateurs connecter(String email, String password) {
        String sql = "SELECT * FROM utilisateurs WHERE email = ? AND password = ?";

        try (Connection cnx = DBcnx.getConnection();
             PreparedStatement stmt = cnx.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new utilisateurs(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("role")
                );
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<utilisateurs> getCoachesForClient(String clientName) {
        List<utilisateurs> coaches = new ArrayList<>();
        String sql = "SELECT id, nom, email, role FROM utilisateurs WHERE role = 'entraineur'";

        try (Connection cnx = DBcnx.getConnection();
             PreparedStatement stmt = cnx.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                utilisateurs coach = new utilisateurs();
                coach.setId(rs.getInt("id"));
                coach.setNom(rs.getString("nom"));
                coach.setEmail(rs.getString("email"));
                coach.setRole(rs.getString("role"));
                coaches.add(coach);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return coaches;
    }

    public List<utilisateurs> getClientsForCoach(String coachName) {
        List<utilisateurs> coaches = new ArrayList<>();
        String sql = "SELECT id, nom, email, role FROM utilisateurs WHERE role = 'client'";

        try (Connection cnx = DBcnx.getConnection();
             PreparedStatement stmt = cnx.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                utilisateurs coach = new utilisateurs();
                coach.setId(rs.getInt("id"));
                coach.setNom(rs.getString("nom"));
                coach.setEmail(rs.getString("email"));
                coach.setRole(rs.getString("role"));
                coaches.add(coach);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return coaches;
    }





}
