package org.example.model;

public class SlaProveedorDTO {
    private int id;
    private String descripcion;
    private String duracionSla;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDuracionSla() {
        return duracionSla;
    }

    public void setDuracionSla(String duracionSla) {
        this.duracionSla = duracionSla;
    }
}

