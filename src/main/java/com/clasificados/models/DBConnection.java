package com.clasificados.models;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnection {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            FileInputStream fis = new FileInputStream("src/main/resources/database.properties");
            Properties pros = new Properties();
            pros.load(fis);
            conn = DriverManager.getConnection(pros.getProperty("MYSQL_DB_URL") + ":" + pros.getProperty("MYSQL_DB_PORT") + "/" + pros.getProperty("MYSQL_DB_NAME"),
                    pros.getProperty("MYSQL_DB_USERNAME"),
                    pros.getProperty("MYSQL_DB_PASSWORD"));
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return conn;
    }
}
