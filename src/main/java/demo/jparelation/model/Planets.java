package demo.jparelation.model;

import jdk.nashorn.internal.objects.annotations.Getter;
import jdk.nashorn.internal.objects.annotations.Setter;

import javax.persistence.*;
import java.util.List;

// Entity, nes per cia pasikursim lentele
@Entity
public class Planets {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    int id;
    @OneToMany(mappedBy = "planet") // reiskia, kad viena planeta turi daug saletilu (one to many)
    List<Satellite> satellites;
    String name;
    int radius;
    int temperature;
    int distance;
    String info;
    String description;

    public Planets() {
    }



    public Planets(List<Satellite> satellites) {
        this.satellites = satellites;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Satellite> getSatellites() {
        return satellites;
    }

    public void setSatellites(List<Satellite> satellites) {
        this.satellites = satellites;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRadius() {
        return radius;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public int getTemperature() {
        return temperature;
    }

    public void setTemperature(int temperature) {
        this.temperature = temperature;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Planets{" +
                "id=" + id +
                ", satellites=" + satellites +
                ", name='" + name + '\'' +
                ", radius=" + radius +
                ", temperature=" + temperature +
                ", distance=" + distance +
                ", info='" + info + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
