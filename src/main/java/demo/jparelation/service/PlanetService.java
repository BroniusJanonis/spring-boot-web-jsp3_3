package demo.jparelation.service;

import demo.jparelation.dao.IPlanetDao;
import demo.jparelation.model.Planets;
import demo.jparelation.model.Satellite;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service // sakom, kad cia yra interfeiso realizacija (kad apima visus metodus)
public class PlanetService implements IPlanetService{
    @Autowired
    IPlanetDao planetDao;

    @Override
    public List<Planets> findall() {
        return planetDao.findall();
    }

    @Override
    public void insertplanet(Planets planet) {
        planetDao.insertplanet(planet);
    }

    @Override
    public void upldateplanet(Planets planet) {
        planetDao.upldateplanet(planet);
    }

    @Override
    public void deleteplanet(int id) {
        planetDao.deleteplanet(id);
    }

    @Override
    public void deletesatellite(int id) {
        planetDao.deletesatellite(id);
    }

    @Override
    public void insertsatellite(Satellite satellite) {
        planetDao.insertsatellite(satellite);
    }
}
