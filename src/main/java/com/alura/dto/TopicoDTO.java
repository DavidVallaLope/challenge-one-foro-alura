package com.alura.dto;

import com.alura.modelo.Curso;
import com.alura.modelo.StatusTopico;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record TopicoDTO(
        @NotBlank
        String titulo,
        @NotBlank
        String mensaje,
        @NotNull
        TopicoUsuarioDTO usuario,
        @NotNull
        TopicoCursoDTO curso
) {
}
