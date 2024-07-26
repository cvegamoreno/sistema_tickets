/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.example.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.example.config.Conexion;
import org.example.model.TipoUsuarioDTO;
import org.example.model.UsuarioDTO;

/**
 *
 * @author Carlos
 */
public class UsuarioDAO {

    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;

    private final String SQLINSERTAR = "INSERT INTO usuario(usuario, contrasenia, tipo_usuario_id) values(?, ?, ?)";
    private final String SQLVALIDAR = "SELECT COUNT(1) FROM usuario WHERE usuario = ?";
    private final String SQLEDITAR = "UPDATE usuario SET contrasenia = ? WHERE usuario = ?";
    private final String SQLELIMINAR = "DELETE FROM usuario WHERE usuario = ?";
    private final String SQLVER = "SELECT u.id, u.usuario, u.contrasenia, t.nombre, u.estado FROM usuario u INNER JOIN tipo_usuario t ON t.id = u.tipo_usuario_id WHERE u.id = ?";

    public int agregar(UsuarioDTO objeto) {
        int result = 0;
        Connection con = null;
        PreparedStatement pst = null;
        try {
            con = Conexion.getConnection();
            pst = con.prepareStatement(SQLINSERTAR);
            pst.setString(1, objeto.getUsuario());
            pst.setString(2, objeto.getContrasenia());
            pst.setString(3, "1");
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

    public boolean ExisteUsuario(String usuario) {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        boolean existe = false;
        try {
            con = Conexion.getConnection();
            pst = con.prepareStatement(SQLVALIDAR);
            pst.setString(1, usuario);
            rs = pst.executeQuery();
            if (rs.next()) {
                existe = (rs.getInt(1) > 0);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return existe;
    }

    public int editar(String usuario, String nuevaContrasenia) {
        int result = 0;
        Connection con = null;
        PreparedStatement pst = null;
        try {
            con = Conexion.getConnection();
            pst = con.prepareStatement(SQLEDITAR);
            pst.setString(1, nuevaContrasenia);
            pst.setString(2, usuario);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

    public int eliminar(String usuario) {
        int result = 0;
        Connection con = null;
        PreparedStatement pst = null;
        try {
            con = Conexion.getConnection();
            pst = con.prepareStatement(SQLELIMINAR);
            pst.setString(1, usuario);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return result;
    }

    public UsuarioDTO ver(int id) {
        UsuarioDTO usuario = null;
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            con = Conexion.getConnection();
            pst = con.prepareStatement(SQLVER);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            if (rs.next()) {
                usuario = new UsuarioDTO();
                TipoUsuarioDTO tipoUsuario = new TipoUsuarioDTO();

                usuario.setId(rs.getInt("id"));
                usuario.setUsuario(rs.getString("usuario"));
                usuario.setContrasenia(rs.getString("contrasenia"));
                usuario.setEstado(rs.getBoolean("estado"));
                usuario.setTipoUsuarioId(rs.getInt("tipo_usuario_id"));

                tipoUsuario.setId(rs.getInt("tipo_usuario_id"));
                tipoUsuario.setNombre(rs.getString("nombre"));

                usuario.setTipoUsuario(tipoUsuario);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDTO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return usuario;
    }
}
