package xyz.tamanmain.cheatsheet.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import xyz.tamanmain.cheatsheet.model.CheatSheet;
import xyz.tamanmain.cheatsheet.service.CheatSheetService;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/cheatsheets")
@Api(tags = "Cheat Sheet")
public class CheatSheetController {

    @Autowired
    private CheatSheetService cheatSheetService;

    @GetMapping
    @ApiOperation(value = "Get all cheatsheets")
    public ResponseEntity<List<CheatSheet>> getAllCheatSheet() {
        return new ResponseEntity<>(cheatSheetService.findAllCheatSheet(), HttpStatus.OK);
    }

    @PostMapping
    @ApiOperation(value = "Create a new cheatsheet")
    public ResponseEntity<CheatSheet> saveCheatSheet(@Valid @RequestBody CheatSheet cheatSheet) {
        return new ResponseEntity<>(cheatSheetService.saveOrUpdateCheatSheet(cheatSheet), HttpStatus.CREATED);
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "Get a cheatsheet")
    public ResponseEntity<CheatSheet> getOneCheatSheet(@PathVariable Long id) {
        return new ResponseEntity<>(cheatSheetService.findCheatSheetById(id), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "Delete a cheatsheet")
    public String deleteCheatSheet(@PathVariable Long id) {
        cheatSheetService.deleteCheatSheet(id);
        return "Deleted";
    }

}
