package myshop.Repository;


import myshop.Entities.TShirts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShirtRepository extends JpaRepository<TShirts, Long> {

}