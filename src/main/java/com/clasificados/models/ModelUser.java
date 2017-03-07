package com.clasificados.models;

import com.clasificados.classes.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author pedro
 */
public class ModelUser {

    public static User getUser(String user) {
        User us = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = DBConnection.getConnection();
        try {
            String sql = "select * from usuario where nombre_usuario = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();

            if (rs.first()) {
                us = new User(rs.getInt("id_usuario"),
                        rs.getString("nombre_usuario"),
                        rs.getString("nombres"),
                        rs.getString("apellidos"),
                        rs.getString("cedula"),
                        rs.getString("correo"),
                        rs.getString("contraseña"),
                        rs.getString("rol"));
            } else {
                System.out.println("Usuario: " + user + " no existe");
            }

        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        return us;
    }

    public static boolean isValidPass(User u) {
        boolean isValid = false;        
        PreparedStatement ps = null;
        ResultSet rs = null;
        Connection con = DBConnection.getConnection();
        try {
            String sql = "select * from usuario where id_usuario = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, u.getId_user());
            rs = ps.executeQuery();

            if (rs.first()) {
                if (u.getContraseña().equals(rs.getString("contraseña"))) {
                    System.out.println("Contraseña correcta para el Usuario: " + u.getUser());
                    isValid = true;
                }
            } else {
                System.out.println("Contraseña incorrecta para el Usuario: " + u.getUser());
                isValid = false;
            }

        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        return isValid;
    }
}
