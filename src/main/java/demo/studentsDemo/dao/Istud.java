package demo.studentsDemo.dao;

import demo.studentsDemo.model.Student;

import java.util.List;

/**
 * Created by Dainius on 2017.08.30.
 */
public interface Istud {
    List<Student> allStudent();
   void addStudent(Student student);
   void updateStudent(Student student);
   void deleteStudent(Student student);
    Student getStudentByID(int id);

}
