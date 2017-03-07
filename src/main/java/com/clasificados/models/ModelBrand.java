package com.clasificados.models;

import com.clasificados.classes.Producto;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModelBrand {
    public ArrayList<Producto> getAllProductos() {
        ArrayList<Producto> productos = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            String sql = "call selectProductos()";
            statement = DBConnection.getConnection().prepareCall(sql);
            rs = statement.executeQuery();
//            while (rs.next()) {
//                productos.add(new Producto(rs.getInt("id_producto"),
//                        rs.getString("nombre"),
//                        rs.getString("img_producto"),
//                        rs.getInt("id_categoria"),
//                        rs.getDouble("precio"),
//                        rs.getInt("stock")));
//            }
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
        return productos;
    }

    public Producto getProducto(int id) {
        Producto producto = null;
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
