/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.web.model;

public class Articulo {

    int id;
    String nombre;
    String marca;
    double precio_compra;
    double precio_venta;
    String talla;
    int existencias;
    String fecha_ingreso;
    String proveedor;
    String numero_proveedor;
    String create_at;
    String delete_at;

    public Articulo(int id, String nombre, String marca, double precio_compra, double precio_venta, String talla, int existencias, String fecha_ingreso, String proveedor, String numero_proveedor, String create_at, String delete_at) {
        this.id = id;
        this.nombre = nombre;
        this.marca = marca;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
        this.talla = talla;
        this.existencias = existencias;
        this.fecha_ingreso = fecha_ingreso;
        this.proveedor = proveedor;
        this.numero_proveedor = numero_proveedor;
        this.create_at = create_at;
        this.delete_at = delete_at;
    }

    public Articulo() {
    }

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

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public int getExistencias() {
        return existencias;
    }

    public void setExistencias(int existencias) {
        this.existencias = existencias;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public String getNumero_proveedor() {
        return numero_proveedor;
    }

    public void setNumero_proveedor(String numero_proveedor) {
        this.numero_proveedor = numero_proveedor;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }

    public String getDelete_at() {
        return delete_at;
    }

    public void setDelete_at(String delete_at) {
        this.delete_at = delete_at;
    }
}
