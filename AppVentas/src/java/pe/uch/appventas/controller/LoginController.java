/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.uch.appventas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.uch.appventas.model.Usuario;
import pe.uch.appventas.service.LoginService;

@Controller
public class LoginController {

    @Autowired
    private LoginService lService;

    @RequestMapping(value = "/login.htm", method = RequestMethod.POST)
    public String login(
            @RequestParam("usuario") String usuario,
            @RequestParam("clave") String clave,
            Model model) {
        String destino = "";
        Usuario bean = null;
        try {
            bean = lService.validar(usuario, clave);
            if (bean == null) {
                throw new Exception("datos incorrectos.");
            }
            model.addAttribute("usuario", bean);
            destino = "main";

        } catch (Exception e) {

            destino = "index";
            model.addAttribute("error", e.getMessage());
        }
        return destino;

    }
}
