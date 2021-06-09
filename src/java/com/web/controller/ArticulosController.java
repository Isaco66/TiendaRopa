package com.web.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.web.model.Articulo;
import com.web.model.ArticulosDao;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONArray;

@Controller
public class ArticulosController {

    @Autowired
    ArticulosDao dao;

    //-- Listar las prendas
    @RequestMapping(value = "/articulos")
    public String articuloview(Model m) {
        System.out.println("*** ArticulosController.articuloview");
        List<Articulo> articulos = dao.getArticulos();
        m.addAttribute("articulos", articulos);
        return "listaArticulos";
    }

    // formulario de agregar prendas nuevas
    @RequestMapping(value = "/articulo_nuevo")
    public String showForm(Model m) {
        System.out.println("*** ArticulosController.showForm");
        m.addAttribute("command", new Articulo());
        return "nuevoArticulo";
    }

    //metodo para guardar las prendas nuevas
    @RequestMapping(value = "/guardar", method = RequestMethod.POST)
    public String guardar(@ModelAttribute("articulo") Articulo articulo) {
        try {
            System.out.println("*** ArticulosController.guardar");
            dao.guardar(articulo);
            return "redirect:articulos.htm";
        } catch (Exception e) {
            System.out.println("Error" + e);
            return "redirect:articulo_nuevo.htm";
        }
    }

    //formulario de editar prendas 
    @RequestMapping(value = "/editar", method = RequestMethod.GET)
    public String actualiza(@RequestParam(value = "id",
            required = true) int id, Model m) {
        try {
            System.out.println("*** ArticulosController.actualiza id=" + id);
            Articulo articulo = dao.getArticuloById(id);
            m.addAttribute("command", articulo);
            return "editarArticulo";
        } catch (Exception e) {
            return "redirect:articulos.htm";
        }

    }

    //metodo para actualizar las prendas
    @RequestMapping(value = "/actualizar", method = RequestMethod.POST)
    public String editsave(@ModelAttribute("articulo") Articulo articulo) {
        System.out.println("*** ArticulosController.editsave ");
        dao.actualiza(articulo);
        return "redirect:articulos.htm";
    }

    //link de borrado
    @RequestMapping(value = "/borrar", method = RequestMethod.GET)
    public String borrar(@RequestParam(value = "id", required = true) int id) {
        System.out.println("*** ArticulosController.borrar id=" + id);
        dao.borrar(id);
        return "redirect:articulos.htm";
    }

    @RequestMapping(value = "/jsonArticulos")
    public String findAllJson(HttpServletResponse response) {
        try {
            List<Articulo> datos = dao.getJson();

            String jsonStr = JSONArray.toJSONString(datos);
            // Establecer el tipo de datos de respuesta en una cadena json
            response.setContentType("application/json");
            // Obtener el flujo de salida enviado al cliente
            ServletOutputStream sos = response.getOutputStream();
            sos.write(jsonStr.getBytes());
            sos.flush();
            sos.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/jsonArticulo", method = RequestMethod.GET)
    public String findByIdJson(@RequestParam(value = "id", required = true) int id, HttpServletResponse response) {

        try {
            List<Articulo> datos = dao.getJson(id);

            String jsonStr = JSONArray.toJSONString(datos);
            // Establecer el tipo de datos de respuesta en una cadena json
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");

            // Obtener el flujo de salida enviado al cliente
            ServletOutputStream sos = response.getOutputStream();
            sos.write(jsonStr.getBytes());
            sos.flush();
            sos.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}//clse
