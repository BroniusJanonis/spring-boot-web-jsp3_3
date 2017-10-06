package demo.studentsDemo.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Dainius on 2017.08.30.
 */
public class StudentRowMapper  implements RowMapper<Student> {


        @Override
        public Student mapRow(ResultSet resultSet, int i) throws SQLException {
            Student stud= new Student();
            stud.setId(resultSet.getInt("id"));
            stud.setCourse(resultSet.getInt("course"));
            stud.setName(resultSet.getString("name"));
            stud.setSurname(resultSet.getString("surname"));
            stud.setSchoolname(resultSet.getString("schoolname"));
            stud.setParentinfo(resultSet.getString("parentinfo"));
            stud.setPhone(resultSet.getString("phone"));
            stud.setEmail(resultSet.getString("email"));
            stud.setMoreinfo(resultSet.getString("moreinfo"));
            return stud;



    }
}
