package com.alura.controller;

import com.alura.domain.TopicoRepository;
import com.alura.dto.TopicoDTO;
import com.alura.modelo.Topico;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1/topico")
public class TopicController {

    @Autowired
    private TopicoRepository repository;

    @PostMapping
    public ResponseEntity<TopicoDTO> saveAndFlush(@RequestBody @Valid TopicoDTO topicoDTO) {
        Topico topico = repository.save(new Topico(topicoDTO));
        return ResponseEntity.ok(topicoDTO);
    }
}
