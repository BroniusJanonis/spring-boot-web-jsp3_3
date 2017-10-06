package demo;

import demo.testavimuiSkirtiModeliai.Computer;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class TestController {

    @RequestMapping("/testjson2")
    public String test20(){
        return "JsonTable";
    }

    @RequestMapping(value = "/test23", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<Computer> test23(@RequestBody Computer computer){
        String s = computer.getName() + " " + computer.getProcessor() + " " + computer.getRam() + " " + computer.getScreen();
        computer.setName(s);
        return new ResponseEntity<Computer>(computer, HttpStatus.OK);
    }


    // UZDUOTIS DESTYTOJO:

    // per JQuerry ir parametrus naudojant ModelAttribute surinkimui duomenu
    @RequestMapping(value = "/testUzduotis", method = RequestMethod.POST)
            @ResponseBody
            public ResponseEntity<Computer> testUzduotis(@RequestBody Computer computer){

        String resp = computer.getTrecias().get(0) + ","
                + computer.getTrecias().get(1) + ","
                + computer.getTrecias().get(2) + ","
                + computer.getTrecias().get(3) + ","
                + computer.getKetvirtas().getKetvirtas() + ","
                + computer.getAntras().getAntras21();

        computer.setName(resp);

        return new ResponseEntity<Computer>(computer, HttpStatus.OK);
    }


    @RequestMapping("/testinis")
    public String open(){
        return "teeeeeest";
    }



}



