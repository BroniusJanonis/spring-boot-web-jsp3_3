package demo.studentsDemo.service;

import demo.studentsDemo.dao.Istud;
import demo.studentsDemo.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Dainius on 2017.08.30.
 */
@Service
public class StudentService implements IStudentService {
    @Autowired
    Istud istud;

    @Override
    public List<Student> allStudent() {
        return  istud.allStudent();
    }

    @Override
    public void addStudent(Student student) {
        istud.addStudent(student);

    }

    @Override
    public void updateStudent(Student student) {
        istud.updateStudent(student);

    }

    @Override
    public void deleteStudent(Student student) {
        istud.deleteStudent(student);

    }

    @Override
    public Student getStudentByID(int id) {
        return istud.getStudentByID(id);
    }


}
