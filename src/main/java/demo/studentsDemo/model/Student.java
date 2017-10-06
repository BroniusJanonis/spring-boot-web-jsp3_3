package demo.studentsDemo.model;

/**
 * Created by Dainius on 2017.08.30.
 */
public class Student {

    private int id;
    private int course;
    private String name;
    private String surname;
    private String schoolname;
    private String parentinfo;
    private String phone;
    private String email;
    private String moreinfo;

    public Student() {
    }

    public Student(int id, int course, String name, String surname, String schoolname, String parentinfo, String phone, String email, String moreinfo) {
        this.id = id;
        this.course = course;
        this.name = name;
        this.surname = surname;
        this.schoolname = schoolname;
        this.parentinfo = parentinfo;
        this.phone = phone;
        this.email = email;
        this.moreinfo = moreinfo;
    }

    public Student(int course, String name, String surname, String schoolname, String parentinfo, String phone, String email, String moreinfo) {
        this.course = course;
        this.name = name;
        this.surname = surname;
        this.schoolname = schoolname;
        this.parentinfo = parentinfo;
        this.phone = phone;
        this.email = email;
        this.moreinfo = moreinfo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCourse() {
        return course;
    }

    public void setCourse(int course) {
        this.course = course;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getSchoolname() {
        return schoolname;
    }

    public void setSchoolname(String schoolname) {
        this.schoolname = schoolname;
    }

    public String getParentinfo() {
        return parentinfo;
    }

    public void setParentinfo(String parentinfo) {
        this.parentinfo = parentinfo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMoreinfo() {
        return moreinfo;
    }

    public void setMoreinfo(String moreinfo) {
        this.moreinfo = moreinfo;
    }
}

