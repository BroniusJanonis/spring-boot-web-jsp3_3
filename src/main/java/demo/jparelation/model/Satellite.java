package demo.jparelation.model;

import javax.persistence.*;

@Entity
public class Satellite {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    int id;
    String name;
    String Satelliteinfo;
    int radius;
    @ManyToOne // nes daug satelitu gali tureti tik viena planeta
    Planets planet;

    public Satellite() {
    }

    public Satellite(String name, String satelliteinfo, int radius, Planets planet) {
        this.name = name;
        this.Satelliteinfo = satelliteinfo;
        this.radius = radius;
        this.planet = planet;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSatelliteinfo() {
        return Satelliteinfo;
    }

    public void setSatelliteinfo(String satelliteinfo) {
        Satelliteinfo = satelliteinfo;
    }

    public int getRadius() {
        return radius;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public Planets getPlanet() {
        return planet;
    }

    public void setPlanet(Planets planet) {
        this.planet = planet;
    }

}
