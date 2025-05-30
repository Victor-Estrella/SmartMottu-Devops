package br.com.fiap.smartmottu.repository;

import br.com.fiap.smartmottu.entity.TipoMoto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TipoMotoRepository extends JpaRepository<TipoMoto, Long> {
    Optional<TipoMoto> findByNmTipo(String nmTipo);
}
