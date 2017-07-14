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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.uch.appventas.service.EstadoService;
import pe.uch.appventas.service.UsuarioService;

/**
 *
 * @author jfreyre
 */
@Controller
public class UsuarioController {
    
    @Autowired
    EstadoService estadoService;
    
    @Autowired
    UsuarioService usuarioService;
    
    @RequestMapping(value = "usuario.htm", method = RequestMethod.GET)
    public String vistaUsuario(Model model) {
         List<Map<String, Object>> estados = estadoService.listaEstado();
        model.addAttribute("estados", estados);
        List<Map<String, Object>>  usuarios = usuarioService.listaUsuario();
        model.addAttribute("usuarios",usuarios);
        return "usuario";
    }
    @RequestMapping(value = "grabausuario.htm", method = RequestMethod.POST)
    public String grabarUsuario(@RequestParam("nombre") String nombre,
            @RequestParam("apellido") String apellido,@RequestParam("correo") String correo
            ,@RequestParam("telefono") String telefono,@RequestParam("dni") String dni,
            @RequestParam("direccion") String direccion,@RequestParam("estado") int estado, Model model) {
        
        usuarioService.grabarUsuario(nombre, apellido, dni, telefono, dni, direccion, estado);
        
        return this.vistaUsuario(model);
    }
    
    
}
