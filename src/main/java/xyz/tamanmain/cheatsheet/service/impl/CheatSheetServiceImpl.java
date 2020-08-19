package xyz.tamanmain.cheatsheet.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xyz.tamanmain.cheatsheet.model.CheatSheet;
import xyz.tamanmain.cheatsheet.repository.CheatSheetRepository;
import xyz.tamanmain.cheatsheet.service.CheatSheetService;

import java.util.List;

@Service
public class CheatSheetServiceImpl implements CheatSheetService {

    @Autowired
    CheatSheetRepository cheatSheetRepository;

    @Override
    public List<CheatSheet> findAllCheatSheet() {
        return cheatSheetRepository.findAll();
    }

    @Override
    public CheatSheet findCheatSheetById(Long id) {
        CheatSheet cheatSheet = cheatSheetRepository.findById(id).orElse(new CheatSheet());
        return cheatSheet;
    }

    @Override
    public CheatSheet saveOrUpdateCheatSheet(CheatSheet cheatSheet) {
        return cheatSheetRepository.save(cheatSheet);
    }

    @Override
    public void deleteCheatSheet(Long id) {
        CheatSheet cheatSheet = cheatSheetRepository.findById(id).orElse(new CheatSheet());
        cheatSheetRepository.delete(cheatSheet);
    }
}
