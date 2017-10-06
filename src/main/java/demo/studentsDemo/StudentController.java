package demo.studentsDemo;

import demo.studentsDemo.dao.Istud;
import demo.studentsDemo.model.Student;
import demo.studentsDemo.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Dainius on 2017.08.30.
 */
@Controller
public class StudentController {
    @Autowired
    IStudentService istudserv;


    @RequestMapping(value = "/studentreg", method = RequestMethod.GET)
    public ModelAndView studentregistration(){

        ModelAndView modelAndView= new ModelAndView("studentreg", "command", new Student());

        return modelAndView;
    }


    // Add Students to temp table (not to server)
    @RequestMapping(value = "/addstudent", method = RequestMethod.GET)
public ModelAndView viewStudent(@ModelAttribute Student student, ModelMap modelMap){
        ModelAndView model=new ModelAndView();
        List<ModelMap> list=new ArrayList<>();
        modelMap.addAttribute("name", student.getName());
        modelMap.addAttribute("surname", student.getSurname());
        modelMap.addAttribute("schoolname", student.getSchoolname());
        modelMap.addAttribute("parentinfo", student.getParentinfo());
        modelMap.addAttribute("phone", student.getPhone());
        modelMap.addAttribute("email", student.getEmail());
        modelMap.addAttribute("moreinfo", student.getMoreinfo());
        modelMap.addAttribute("course", student.getCourse());
        list.add(modelMap);
        model.setViewName("studentlist");
        model.addObject("studentlist",list); //cia isveda suvestus duomenis i web - per http://localhost:8080/addstudent
        istudserv.addStudent(student); //cia iraso i duomenu baze duomenis
        return model;
}

    // ALL STUDENTS
    @RequestMapping(value = "/student", method = RequestMethod.GET)
    public String studentList(@ModelAttribute Student student, ModelMap modelMap){
        List<Student> list2=istudserv.allStudent();
        modelMap.addAttribute("studentlistDB", list2);
        return "studentlistDB";
    }

    // ADD redirect to addstudent.jsp
    @RequestMapping(value = "/addstudredirect", method = RequestMethod.POST)
    public String addRedirect(){
        return "addstudent";
    }
    // ADD
    @RequestMapping(value = "/addstud", method = RequestMethod.POST)
    public String addNewStudent(@ModelAttribute Student student){
        istudserv.addStudent(student);
        return "redirect:/student";
    }

//     Update redirect to updatestud.jsp su values viduej
    @RequestMapping(value = "/updredirect", method = RequestMethod.POST)
    public String updateRedirectWithValues(@RequestParam("id") int id, ModelMap modelMap){
        Student student1 = istudserv.getStudentByID(id);
        modelMap.addAttribute("studid", student1);
        return "updatestud";
    }

    // UPDATE
    @RequestMapping(value = "/upstud", method = RequestMethod.POST)
    public String updatestudent(@ModelAttribute Student student){
        istudserv.updateStudent(student);
        return "redirect:/student";
    }

    // DELETE
    @RequestMapping(value = "/delstud", method = RequestMethod.POST)
    public String deleteStudent(@RequestParam ("id1") int id){
        Student student1 = istudserv.getStudentByID(id);
        istudserv.deleteStudent(student1);
        return "redirect:/student";
    }

    // DELETE veikia tik tada, kai pasetine esam hidden input
//    @RequestMapping(value = "/delstud", method = RequestMethod.POST)
//    public String deleteStudent(@ModelAttribute Student student){
//        istudserv.deleteStudent(student);
//        return "redirect:/student";
//    }

    // STUDENT BY ID
    @RequestMapping(value = "/studid", method = RequestMethod.GET)
    public String insertByID(@RequestParam("id") int id, ModelMap modelMap){
        Student student1 = istudserv.getStudentByID(id);
        modelMap.addAttribute("studid", student1);
        return "updatestud";
    }

    @RequestMapping(value = "/studenttest", method = RequestMethod.GET)
    public String studentListForAjaxTest(@ModelAttribute Student student, ModelMap modelMap){
        List<Student> list2=istudserv.allStudent();
        modelMap.addAttribute("studentlistDB", list2);
        return "test";
    }

    @RequestMapping(value = "/studentajaxtest", method = RequestMethod.GET)
    public String studentAjaxTest(@ModelAttribute Student student, ModelMap modelMap){
        List<Student> list2=istudserv.allStudent();
        modelMap.addAttribute("studentlistDB", list2);
        return "test";
    }


}


//    Ka suzinojau:
//    1. Tiesiogiai is jsp i jsp negali eit, reikia is jsp i controler, ir is controler i jsp (ar yra kitu varijantu?)
//    2. Per @RequestParam gali issikviesti pasetinta buttono value (gal ir bet ko apsirasyto value).
//            Tuomet gali Controlerio viduj issikviest pagal dao metoda su gautu parametru objekta ir ji persiust i kita jsp
//            Q1: kaip persiust tiesiogiai is jsp objekta i Controler dar nezinau
//    3. Per @ModelAttribute gaunu is jsp duomenis, kuriuos per inputa su name isivardinau (kad atitiktu Student konstruktoriaus duomenis)
//            Q2: ar galima ne tik per imputa pasetint duomenis, kuriuos gautumem Controleryje per @ModelAttribute
//    4. Value ant inputu yra jo verte (galima pasetint duomeniu per ${})
//    5. Value ant button yra tai, ka jis per pvz type="submit" nusinesa su savim
//    6. onclick="form.action='/delstud'" redirektina i kita puslapi