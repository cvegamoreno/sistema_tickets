package org.example.model;

public class DepartamentoEmpresarialDTO {
    private int id;
    private String nombre;
    private String piso;
    private boolean estado;
    private int departamentoEmpresarialId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPiso() {
        return piso;
    }

    public void setPiso(String piso) {
        this.piso = piso;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public int getDepartamentoEmpresarialId() {
        return departamentoEmpresarialId;
    }

    public void setDepartamentoEmpresarialId(int departamentoEmpresarialId) {
        this.departamentoEmpresarialId = departamentoEmpresarialId;
    }
}

