package com.web.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ArticulosDao {

    private JdbcTemplate jdbcTmpl;

    public void setJdbcTmpl(JdbcTemplate jdbc) {
        System.out.println("Conexion");
        this.jdbcTmpl = jdbc;
    }

    public int guardar(Articulo articulo) {
        String sql = "INSERT INTO `articulos`(`id`, `nombre`, `marca`, `precio_compra`, `precio_venta`, `talla`, `existencias`, `fecha_ingreso`, `proveedor`, `numero_proveedor`) VALUES (null,?,?,?,?,?,?,?,?,?)";
        return jdbcTmpl.update(sql,
                articulo.getNombre().toUpperCase().charAt(0) + articulo.getNombre().substring(1, articulo.getNombre().length()).toLowerCase(),
                articulo.getMarca().toUpperCase().charAt(0) + articulo.getMarca().substring(1, articulo.getMarca().length()).toLowerCase(),
                articulo.getPrecio_compra(),
                articulo.getPrecio_venta(),
                articulo.getTalla().toUpperCase().charAt(0) + articulo.getTalla().substring(1, articulo.getTalla().length()).toLowerCase(),
                articulo.getExistencias(),
                articulo.getFecha_ingreso(),
                articulo.getProveedor().toUpperCase().charAt(0) + articulo.getProveedor().substring(1, articulo.getProveedor().length()).toLowerCase(),
                articulo.getNumero_proveedor()
        );
    }

    public int actualiza(Articulo articulo) {
        String sql = "UPDATE `articulos` SET `nombre`=?,`marca`=?,`precio_compra`=?,`precio_venta`=?,`talla`=?,`existencias`=?,`fecha_ingreso`=?,`proveedor`=?,`numero_proveedor`=? WHERE id=?";
        return jdbcTmpl.update(sql,
                articulo.getNombre().toUpperCase().charAt(0) + articulo.getNombre().substring(1, articulo.getNombre().length()).toLowerCase(),
                articulo.getMarca().toUpperCase().charAt(0) + articulo.getMarca().substring(1, articulo.getMarca().length()).toLowerCase(),
                articulo.getPrecio_compra(),
                articulo.getPrecio_venta(),
                articulo.getTalla().toUpperCase().charAt(0) + articulo.getTalla().substring(1, articulo.getTalla().length()).toLowerCase(),
                articulo.getExistencias(),
                articulo.getFecha_ingreso(),
                articulo.getProveedor().toUpperCase().charAt(0) + articulo.getProveedor().substring(1, articulo.getProveedor().length()).toLowerCase(),
                articulo.getNumero_proveedor(),
                articulo.getId()
        );
    }

    public int borrar(int id) {
        String sql = "DELETE FROM `articulos` WHERE id=?";
        return jdbcTmpl.update(sql, id);
    }

    public Articulo getArticuloById(int id) {
        String sql = "SELECT * FROM articulos WHERE id= ?";
        return jdbcTmpl.queryForObject(sql,
                new Object[]{id},
                new BeanPropertyRowMapper<Articulo>(Articulo.class));
    }

    public List<Articulo> getArticulos() {
        String sql = "SELECT * FROM articulos";
        return this.jdbcTmpl.query(sql, new RowMapper<Articulo>() {
            @Override
            public Articulo mapRow(ResultSet resultSet, int i) throws SQLException {
                Articulo articulo = new Articulo();
                articulo.setId(resultSet.getInt(1));
                articulo.setNombre(resultSet.getString(2));
                articulo.setMarca(resultSet.getString(3));
                articulo.setPrecio_compra(resultSet.getDouble(4));
                articulo.setPrecio_venta(resultSet.getDouble(5));
                articulo.setTalla(resultSet.getString(6));
                articulo.setExistencias(resultSet.getInt(7));
                articulo.setFecha_ingreso(resultSet.getString(8));
                articulo.setProveedor(resultSet.getString(9));
                articulo.setNumero_proveedor(resultSet.getString(10));
                articulo.setCreate_at(resultSet.getString(11));
                articulo.setDelete_at(resultSet.getString(12));
                return articulo;
            }
        });
    }

    public List<Articulo> getJson() {
        String sql = "select * from articulos";
        List datos = this.jdbcTmpl.queryForList(sql);
        return datos;
    }

    public List<Articulo> getJson(int id) {
        String sql = "select * from articulos where id = ?";
        List datos = this.jdbcTmpl.queryForList(sql, new Object[]{id});
        return datos;
    }
}//clase
