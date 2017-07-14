/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.uch.appventas.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.uch.appventas.model.Usuario;
import pe.uch.appventas.service.CampañaService;
import pe.uch.appventas.service.ProductoService;
import pe.uch.appventas.service.UsuarioService;

/**
 *
 * @author jfreyre
 */
@Controller
public class VentaController {
    
    @Autowired
    UsuarioService usuarioService;
    
    @Autowired
    private ProductoService productoService;
    
    @Autowired
    private CampañaService campañaService;
    
    @RequestMapping(value = "venta.htm", method = RequestMethod.GET)
    public String vistaVenta(Model model) {
     
        List<Map<String, Object>> lista = productoService.listaProducto();
        List<Map<String, Object>> campaña = campañaService.listaCampaña();
        model.addAttribute("productos",lista);
        model.addAttribute("campañas",campaña);
        
       
        return "venta";
    }
    
}
