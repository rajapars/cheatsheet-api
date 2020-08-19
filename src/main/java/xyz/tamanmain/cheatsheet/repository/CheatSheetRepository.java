package xyz.tamanmain.cheatsheet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import xyz.tamanmain.cheatsheet.model.CheatSheet;

public interface CheatSheetRepository extends JpaRepository<CheatSheet, Long> {
}
