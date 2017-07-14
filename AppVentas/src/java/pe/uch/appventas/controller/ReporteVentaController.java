/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.uch.appventas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author jfreyre
 */
@Controller
public class ReporteVentaController {
    
     @RequestMapping(value = "reporteventa.htm", method = RequestMethod.GET)
    public String vistaReporte(Model model) {
        
        return "reporteventa";
    }
}
