package demo.jparelation.service;

import demo.jparelation.model.Planets;
import demo.jparelation.model.Satellite;


import java.util.List;

public interface IPlanetService {
    List<Planets> findall();
    void insertplanet(Planets planet);
    void insertsatellite(Satellite satellite);
    void upldateplanet(Planets planet);
    void deleteplanet(int id);
    void deletesatellite(int id);



}
