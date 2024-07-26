package org.example.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.example.config.Conexion;
import org.example.model.TipoUsuarioDTO;
import org.example.model.UsuarioDTO;

/**
 *
 * @author Carlos
 */
public class LoginDAO {
    private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;
    
    private final String SQLLOGIN = "SELECT u.*, tu.nombre AS tipoUsuarioNombre FROM usuario u JOIN tipo_usuario tu ON u.tipo_usuario_id = tu.id WHERE u.usuario = ? and u.contrasenia = ?";
    
    public UsuarioDTO Login(String usuario, String contrasenia){
        UsuarioDTO oUser = null;
        try {
            Connection con = Conexion.getConnection();
            pst = con.prepareStatement(SQLLOGIN);
            pst.setString(1, usuario);
            pst.setString(2, contrasenia);
            rs = pst.executeQuery();
            
            if (rs.next()) {
                oUser = new UsuarioDTO();
                oUser.setId(rs.getInt("id"));
                oUser.setUsuario(rs.getString("usuario"));
                oUser.setTipoUsuarioId(rs.getInt("tipo_usuario_id"));
                
                TipoUsuarioDTO tipoUsuario = new TipoUsuarioDTO();
                tipoUsuario.setId(rs.getInt("tipo_usuario_id"));
                tipoUsuario.setNombre(rs.getString("tipoUsuarioNombre"));
                oUser.setTipoUsuario(tipoUsuario);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
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
                ex.printStackTrace();
            }
        }
        return oUser;
    }
}
