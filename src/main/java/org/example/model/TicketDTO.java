package org.example.model;
import java.util.Date;

public class TicketDTO {
    private int id;
    private String numero;
    private String breveDescripcion;
    private String descripcion;
    private Date fechaCreacion;
    private Date fechaCierre;
    private int categoriaId;
    private int subcategoriaId;
    private int tipoTicketId;
    private int estadoId;
    private int tipoContactoId;
    private String ticketProveedor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getBreveDescripcion() {
        return breveDescripcion;
    }

    public void setBreveDescripcion(String breveDescripcion) {
        this.breveDescripcion = breveDescripcion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getFechaCierre() {
        return fechaCierre;
    }

    public void setFechaCierre(Date fechaCierre) {
        this.fechaCierre = fechaCierre;
    }

    public int getCategoriaId() {
        return categoriaId;
    }

    public void setCategoriaId(int categoriaId) {
        this.categoriaId = categoriaId;
    }

    public int getSubcategoriaId() {
        return subcategoriaId;
    }

    public void setSubcategoriaId(int subcategoriaId) {
        this.subcategoriaId = subcategoriaId;
    }

    public int getTipoTicketId() {
        return tipoTicketId;
    }

    public void setTipoTicketId(int tipoTicketId) {
        this.tipoTicketId = tipoTicketId;
    }

    public int getEstadoId() {
        return estadoId;
    }

    public void setEstadoId(int estadoId) {
        this.estadoId = estadoId;
    }

    public int getTipoContactoId() {
        return tipoContactoId;
    }

    public void setTipoContactoId(int tipoContactoId) {
        this.tipoContactoId = tipoContactoId;
    }

    public String getTicketProveedor() {
        return ticketProveedor;
    }

    public void setTicketProveedor(String ticketProveedor) {
        this.ticketProveedor = ticketProveedor;
    }
}

