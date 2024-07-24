/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.example.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.example.config.Conexion;
import org.example.model.TrabajadorDTO;

/**
 *
 * @author Carlos
 */
public class LoginDAO {
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;
    
    private final String SQLLOGIN = "SELECT * FROM trabajador WHERE email = ? and contrasenia = ?";
    
    public TrabajadorDTO Login(String mail, String password){
        TrabajadorDTO oTrab = null;
        try {
            Connection con = Conexion.getConnection();
            pst = con.prepareStatement(SQLLOGIN);
            pst.setString(1, mail);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if (rs.next()) {
                oTrab = new TrabajadorDTO();
                oTrab.setId(rs.getInt("UsuarioID"));
                oTrab.setNombre(rs.getString("Nombre"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally{
            try {
                if (con != null) {
                    con.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception ex) {
            }
        }
        return oTrab;
    }
}
