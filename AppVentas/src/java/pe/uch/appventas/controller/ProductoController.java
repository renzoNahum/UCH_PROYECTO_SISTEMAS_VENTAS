package pe.uch.appventas.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pe.uch.appventas.model.Producto;
import pe.uch.appventas.service.ProductoService;
import pe.uch.appventas.service.PromocionService;

@Controller
public class ProductoController {

    @Autowired
    private ProductoService productoService;

    @Autowired
    private PromocionService promocionService;

    @RequestMapping(value = "producto.htm", method = RequestMethod.GET)
    public String vistaProducto(Model model) {
        List<Map<String, Object>> promociones = promocionService.listaPromociones();
         List<Map<String, Object>> productos = productoService.listaProducto();
        model.addAttribute("promociones", promociones);
        model.addAttribute("productos", productos);
        return "producto";
    }

    @RequestMapping(value = "main.htm", method = RequestMethod.GET)
    public String vistaMain(Model model) {

        return "main";
    }

    @RequestMapping(value = "grabaproducto.htm", method = RequestMethod.POST)
    public String grabarUsuario(@RequestParam("descripcion") String descripcion,
            @RequestParam("precio") int precio,@RequestParam("stock") String stock
            ,@RequestParam("promocion") int promocion, Model model) {
        
        productoService.GrabarProducto(descripcion, precio, precio, promocion);
        
        return this.vistaProducto(model);
    }
}
