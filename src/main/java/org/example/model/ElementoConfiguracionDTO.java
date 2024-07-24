package org.example.model;

import java.util.Date;

public class ElementoConfiguracionDTO {
    private int id;
    private String descripcion;
    private String numeroSerie;
    private Date fechaAdquisicion;
    private Date fechaCompra;
    private Date fechaMantenimiento;
    private Date fechaInicioGarantia;
    private Date fechaFinGarantia;
    private String sistemaOperativo;
    private int marcaId;
    private int modeloId;
    private int tipoEquipoId;
    private int subTipoEquipoId;

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

    public String getNumeroSerie() {
        return numeroSerie;
    }

    public void setNumeroSerie(String numeroSerie) {
        this.numeroSerie = numeroSerie;
    }

    public Date getFechaAdquisicion() {
        return fechaAdquisicion;
    }

    public void setFechaAdquisicion(Date fechaAdquisicion) {
        this.fechaAdquisicion = fechaAdquisicion;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public Date getFechaMantenimiento() {
        return fechaMantenimiento;
    }

    public void setFechaMantenimiento(Date fechaMantenimiento) {
        this.fechaMantenimiento = fechaMantenimiento;
    }

    public Date getFechaInicioGarantia() {
        return fechaInicioGarantia;
    }

    public void setFechaInicioGarantia(Date fechaInicioGarantia) {
        this.fechaInicioGarantia = fechaInicioGarantia;
    }

    public Date getFechaFinGarantia() {
        return fechaFinGarantia;
    }

    public void setFechaFinGarantia(Date fechaFinGarantia) {
        this.fechaFinGarantia = fechaFinGarantia;
    }

    public String getSistemaOperativo() {
        return sistemaOperativo;
    }

    public void setSistemaOperativo(String sistemaOperativo) {
        this.sistemaOperativo = sistemaOperativo;
    }

    public int getMarcaId() {
        return marcaId;
    }

    public void setMarcaId(int marcaId) {
        this.marcaId = marcaId;
    }

    public int getModeloId() {
        return modeloId;
    }

    public void setModeloId(int modeloId) {
        this.modeloId = modeloId;
    }

    public int getTipoEquipoId() {
        return tipoEquipoId;
    }

    public void setTipoEquipoId(int tipoEquipoId) {
        this.tipoEquipoId = tipoEquipoId;
    }

    public int getSubTipoEquipoId() {
        return subTipoEquipoId;
    }

    public void setSubTipoEquipoId(int subTipoEquipoId) {
        this.subTipoEquipoId = subTipoEquipoId;
    }
}
