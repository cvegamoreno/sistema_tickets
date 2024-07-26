package org.example.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import org.example.config.Conexion;
import org.example.model.TrabajadorCompuestoDTO;
import org.example.model.TrabajadorDTO;

/**
 *
 * @author Carlos
 */
public class TrabajadorDAO {
     private Connection con = null;
    private ResultSet rs = null;
    private PreparedStatement pst = null;

    private final String SQLISTARIDTRB = "SELECT t.id AS trabajadorId, t.nombre AS nombreTrabajador, "
            + "t.apellido, t.email, t.celular, t.dni, t.estado, tt.cargo AS cargoTipoTrabajador, "
            + "u.usuario, s.nombre AS nombreSede "
            + "FROM trabajador t "
            + "INNER JOIN tipo_trabajador tt ON t.tipo_trabajador_id = tt.id "
            + "INNER JOIN sede s ON t.sede_id = s.id "
            + "INNER JOIN usuario u ON t.usuario_id = u.id "
            + "WHERE t.id = ?";

    public ArrayList<TrabajadorCompuestoDTO> ListarPorIdCliente(int id) {
        ArrayList<TrabajadorCompuestoDTO> list = new ArrayList<>();
        try {
            con = Conexion.getConnection();
            pst = con.prepareStatement(SQLISTARIDTRB);
            pst.setInt(1, id);
            rs = pst.executeQuery();

            while (rs.next()) {
                TrabajadorCompuestoDTO obj = new TrabajadorCompuestoDTO();
                obj.setTrabajadorId(rs.getInt("trabajadorId"));
                obj.setNombreTrabajador(rs.getString("nombreTrabajador"));
                obj.setApellido(rs.getString("apellido"));
                obj.setEmail(rs.getString("email"));
                obj.setCelular(rs.getString("celular"));
                obj.setDni(rs.getString("dni"));
                obj.setEstado(rs.getString("estado"));
                obj.setCargoTipoTrabajador(rs.getString("cargoTipoTrabajador"));
                obj.setUsuario(rs.getString("usuario"));
                obj.setNombreSede(rs.getString("nombreSede"));

                list.add(obj);
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
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return list;
    }
}
