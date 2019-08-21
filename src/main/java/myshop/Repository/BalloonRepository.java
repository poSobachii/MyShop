package myshop.Repository;


import myshop.Entities.Balloons;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BalloonRepository extends JpaRepository<Balloons, Long> {

}