package org.example.model;

/**
 *
 * @author Carlos
 */
public class TrabajadorCompuestoDTO {
    private int trabajadorId;
    private String nombreTrabajador;
    private String apellido;
    private String email;
    private String celular;
    private String dni;
    private String estado;
    private String cargoTipoTrabajador;
    private String usuario;
    private String nombreSede;

    public int getTrabajadorId() {
        return trabajadorId;
    }

    public void setTrabajadorId(int trabajadorId) {
        this.trabajadorId = trabajadorId;
    }

    public String getNombreTrabajador() {
        return nombreTrabajador;
    }

    public void setNombreTrabajador(String nombreTrabajador) {
        this.nombreTrabajador = nombreTrabajador;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCargoTipoTrabajador() {
        return cargoTipoTrabajador;
    }

    public void setCargoTipoTrabajador(String cargoTipoTrabajador) {
        this.cargoTipoTrabajador = cargoTipoTrabajador;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombreSede() {
        return nombreSede;
    }

    public void setNombreSede(String nombreSede) {
        this.nombreSede = nombreSede;
    }
    
}
