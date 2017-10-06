package demo.studentsDemo.dao;

import demo.studentsDemo.model.Student;
import demo.studentsDemo.model.StudentRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Dainius on 2017.08.30.
 */
@Repository
@Transactional
public class StudDao implements Istud {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Student> allStudent() {
        String sql="SELECT * FROM student";
        List<Student> list=jdbcTemplate.query(sql, new StudentRowMapper());
        return list;
    }

    @Override
    public void addStudent(Student student) {
        String sqlinsert="INSERT INTO student (name, surname, schoolname, parentinfo, phone, email, moreinfo, course) VALUES (?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sqlinsert, student.getName(), student.getSurname(), student.getSchoolname(),
                student.getParentinfo(), student.getPhone(), student.getEmail(),student.getMoreinfo(), student.getCourse());

    }

    @Override
    public void updateStudent(Student student) {
        String sqlupdate="UPDATE student SET name=?, surname=?, schoolname=?, parentinfo=?, phone=?, email=?, moreinfo=?, course=? WHERE id=?";
        jdbcTemplate.update(sqlupdate, student.getName(), student.getSurname(), student.getSchoolname(), student.getParentinfo(), student.getPhone(), student.getEmail(), student.getMoreinfo(), student.getCourse(), student.getId());

    }

    @Override
    public void deleteStudent(Student student) {
        String sqldelete="DELETE FROM student WHERE id=?";
        jdbcTemplate.update(sqldelete, student.getId());

    }

    @Override
    public Student getStudentByID(int id) {
        String sqlid="SELECT * FROM student where id=?";
        Student student1 = jdbcTemplate.queryForObject(sqlid, new StudentRowMapper(), id);

        return student1;
    }
}
