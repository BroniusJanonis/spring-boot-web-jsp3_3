package demo.jparelation.dao;

import demo.jparelation.model.Planets;
import demo.jparelation.model.Satellite;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.List;

@Repository
@Transactional  // reikia, kad suveikt tik tada, kada bus commit, jei nebus commit, tai neirasys duomenu
public class PlanetDao implements IPlanetDao{

    // sitas reikalingas, nes pasakom, kad issikvieciam EntityManager
    @PersistenceContext
    EntityManager entityManager;


    // GET LIST
    @Override
    public List<Planets> findall() {
        // mes Stringe klaida, nes neatpazista kodo, taciau reikia Planets didziaja raide (neaisku, kodel)
        TypedQuery<Planets> namedQuery = entityManager.createQuery("from Planets", Planets.class);
        List<Planets> resultList = namedQuery.getResultList();

        return resultList;
    }

    //arba
//    @Override
//    public List<Planets> findall() {
//    // mes Stringe klaida, nes neatpazista kodo, taciau reikia Planets didziaja raide (neaisku, kodel)
//        String sqlfindall = "SELECT p.* FROM Planets p";
//        TypedQuery<Planets> namedQuery = entityManager.createQuery(sqlfindall, Planets.class);
//        List<Planets> resultList = namedQuery.getResultList();
//        // arba
//        // List<Planets> resultList1 = entityManager.createNamedQuery(sqlfindall, Planets.class).getResultList();
//        return resultList;
//    }


    // ADD PLANET
    @Override
    public void insertplanet(Planets planet) {
        String sqlinsert="INSERT INTO planets(description,distance,info,name,radius,temperature) VALUES (?,?,?,?,?,?)";
        Query query = this.entityManager.createNativeQuery(sqlinsert,Planets.class);
        query.setParameter(1, planet.getDescription());
        query.setParameter(2, planet.getDistance());
        query.setParameter(3, planet.getInfo());
        query.setParameter(4, planet.getName());
        query.setParameter(5, planet.getRadius());
        query.setParameter(6, planet.getTemperature());
        query.executeUpdate();
    }

    // ADD PLANET'S SATELLITE
    @Override
    public void insertsatellite(Satellite satellite) {
        String sqlinsert="INSERT INTO satellite(satelliteinfo,name,radius,planet_id) VALUES (?,?,?,?)";
        Query query = this.entityManager.createNativeQuery(sqlinsert,Planets.class);
        query.setParameter(1, satellite.getSatelliteinfo());
        query.setParameter(2, satellite.getName());
        query.setParameter(3, satellite.getRadius());
        query.setParameter(4, satellite.getPlanet());
        query.executeUpdate();
    }


    // UPDATE
    @Override
    public void upldateplanet(Planets planet) {
        String sqlinsert="Update planets SET description=? , distance=?, info=?, name=?, radius=?, temperature=? WHERE id=?";
        Query query = this.entityManager.createNativeQuery(sqlinsert,Planets.class);
        query.setParameter(1, planet.getDescription());
        query.setParameter(2, planet.getDistance());
        query.setParameter(3, planet.getInfo());
        query.setParameter(4, planet.getName());
        query.setParameter(5, planet.getRadius());
        query.setParameter(6, planet.getTemperature());
        query.setParameter(7, planet.getId());
        query.executeUpdate();
    }


    // DELETE PLANET
    @Override
    public void deleteplanet(int id) {
//        DELETE from satellite WHERE planet_id="+planet.getId()+";
        String sqldelete = "DELETE FROM planets WHERE id="+id;
        this.entityManager.createNativeQuery(sqldelete, Planets.class).executeUpdate();
    }

    // DELETE PLANET's SATELLITE
    @Override
    public void deletesatellite(int id) {
        this.entityManager.createNativeQuery("DELETE FROM satellite WHERE id="+id, Satellite.class).executeUpdate();
    }


}
