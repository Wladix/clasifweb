package com.clasificados.models;

import com.clasificados.classes.Ads;
import java.sql.*;
import java.util.ArrayList;

public class ModelAds {
    public ArrayList<Ads> getAllAds(int idCategory) {
        ArrayList<Ads> listAds = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            String sql = "select * from vehiculo";
            statement = DBConnection.getConnection().prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                listAds.add(new Ads(rs.getInt("id_vehiculo"),
                        rs.getString("fecha_publicacion"),
                        rs.getString("marca"),
                        rs.getString("modelo"),
                        rs.getString("titulo"),
                        rs.getString("precio"),
                        rs.getString("kilometraje"),
                        rs.getString("combustible"),
                        rs.getString("transmision"),
                        rs.getString("color"),
                        rs.getString("condicion"),
                        rs.getString("año_fabricacion"),
                        rs.getString("descripcion"),
                        rs.getString("condicion_venta"),
                        rs.getString("ubicacion_estado"),
                        rs.getString("ubicacion_ciudad"),
                        rs.getString("telefono1"),
                        rs.getString("telefono2"),
                        rs.getString("imagen")));
            }
        } catch (Exception e) {

        } finally {
            try {
                if (rs != null) rs.close();
                if (statement != null) statement.close();
                if (DBConnection.getConnection() != null) DBConnection.getConnection().close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        return listAds;
    }

    public Ads getAds(int id) {
        Ads producto = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            String sql = "call selectProducto(?)";
            statement = DBConnection.getConnection().prepareCall(sql);
            statement.setInt(1, id);
            rs = statement.executeQuery();
//            while (rs.next()) {
//                producto = new Producto(rs.getInt("id_producto"),
//                        rs.getString("nombre"),
//                        rs.getString("img_producto"),
//                        rs.getInt("id_categoria"),
//                        rs.getDouble("precio"),
//                        rs.getInt("stock"));
//            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (statement != null) statement.close();
                if (DBConnection.getConnection() != null) DBConnection.getConnection().close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        return producto;
    }
}
