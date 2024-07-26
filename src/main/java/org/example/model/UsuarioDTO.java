package org.example.model;

public class UsuarioDTO {
    private int id;
    private String usuario;
    private String contrasenia;
    private boolean estado;
    private int tipoUsuarioId;
    private TipoUsuarioDTO tipoUsuario;

    public String nombreMayusc(){
        return (usuario).toUpperCase();
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public int getTipoUsuarioId() {
        return tipoUsuarioId;
    }

    public void setTipoUsuarioId(int tipoUsuarioId) {
        this.tipoUsuarioId = tipoUsuarioId;
    }
    
    public TipoUsuarioDTO getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuarioDTO tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    
    public String getTipoUsuarioNombre() {
        if (tipoUsuario != null) {
            return tipoUsuario.getNombre();
        } else {
            return "Desconocido";
        }
    }
}

