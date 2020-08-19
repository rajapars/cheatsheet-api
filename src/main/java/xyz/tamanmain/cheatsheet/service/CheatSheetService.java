package xyz.tamanmain.cheatsheet.service;

import xyz.tamanmain.cheatsheet.model.CheatSheet;

import java.util.List;

public interface CheatSheetService {

    List<CheatSheet> findAllCheatSheet();

    CheatSheet findCheatSheetById(Long id);

    CheatSheet saveOrUpdateCheatSheet(CheatSheet cheatSheet);

    void deleteCheatSheet(Long id);
}
