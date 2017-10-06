package demo.jparelation;

import demo.jparelation.model.Planets;
import demo.jparelation.model.Satellite;
import demo.jparelation.service.IPlanetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class PlanetController {
    @Autowired
    IPlanetService planetService;

    // GET ALL LIST
    @RequestMapping(value = "/planets", method = RequestMethod.GET)
    public ModelAndView getPlanetList(){
        ModelAndView model = new ModelAndView("planet");
        List<Planets> planetsList = planetService.findall();
        model.addObject("planets", planetsList);
        return model;
    }

    // ADD PLANET
    @RequestMapping(value = "addplanetredirect", method = RequestMethod.POST)
    public String addPlanetRedirect(){
        return "addplanet";
    }

    @RequestMapping(value = "addplanet", method = RequestMethod.POST)
    public String addPlanet(Model model, @ModelAttribute Planets planet){
        planetService.insertplanet(planet);
        return "redirect:planets";
    }

    // ADD PLANET'S SATTELITE
    @RequestMapping(value = "addsatellitedirect", method = RequestMethod.POST)
    public String addSatelliteRedirect(@RequestParam("btn1") int planetid, Model model){
        model.addAttribute("id", planetid);
        return "addsatellite";
    }

    @RequestMapping(value = "addsatellite", method = RequestMethod.POST)
    public String addSatellite2(Model model, @RequestParam ("satelliteinfo") String satelliteinfo
    ,@RequestParam ("name") String name
    ,@RequestParam ("radius") int radius
    ,@RequestParam ("id") int planetid){
        Planets planets = new Planets();
        planets.setId(planetid);
        // kadangi esam konstruktoriuje pasirase id generate auto, tad cia pasisetinam
        // , nes mes jo neirasysim i nauja planeta, o tik panaudosim irasydami satelita ir priskirdami jo planetai
        Satellite satellite = new Satellite(satelliteinfo, name, radius, planets);
        planetService.insertsatellite(satellite);
        return "redirect:planets";
    }



    // Update redirect
    @RequestMapping(value = "/updredirectplanet", method = RequestMethod.POST)
    public String updateRedirectWithValues(@ModelAttribute Planets planet, ModelMap modelMap){
        modelMap.addAttribute("planetredirect", planet);
        return "planet";
    }

    // UPDATE
    @RequestMapping(value = "/updplanet", method = RequestMethod.POST)
    public String updatestudent(@ModelAttribute Planets planet){
        planetService.upldateplanet(planet);
        return "redirect:/planet";
    }

    // DELETE PLANET
    // kadangi trinant planeta, ziuri ar bus istrintas foreign_key satelitai, tai reikia:
        // 1. arba trinti pirma satelitus ir tada ju planetas
        // 2. arba uzsideti satellites> modify table> foreign_key > delete rule> cascade. Tai reikia, kad trins visak
    @RequestMapping(value = "/deleteplanet", method = RequestMethod.POST)
    public String deletePlanet(@RequestParam("btn") int id){
        planetService.deleteplanet(id);
        return "redirect:/planets";
    }

    // DELETE PLANET'S SATELLITE
    @RequestMapping(value = "/deletesatellite", method = RequestMethod.POST)
    public String deleteSatellite(@RequestParam("btndelsat") int id){
        planetService.deletesatellite(id);
        return "redirect:planets";
    }


    // JQyerry
    @RequestMapping("/jgtest1")
    public String jqutest(){
        return "JQuerry1Test";
    }


    // UPDATE PLANET JQUERY
    @RequestMapping(value = "/updplanetjquerry", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> updatestudentJQuerry(@ModelAttribute Planets planet){
        planetService.upldateplanet(planet);
        String resp = "update of planet successful";
        return new ResponseEntity<String>(resp, HttpStatus.OK);
    }



}
