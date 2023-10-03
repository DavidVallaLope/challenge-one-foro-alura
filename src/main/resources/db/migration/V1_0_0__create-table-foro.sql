CREATE TABLE usuarios
(
    id       BIGINT      NOT NULL AUTO_INCREMENT,
    nombre   VARCHAR(50)  NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo   VARCHAR(100) NOT NULL UNIQUE,
    username VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(250) NOT NULL,
    salt     VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE cursos
(
    id           BIGINT      NOT NULL AUTO_INCREMENT,
    nombre       VARCHAR(50) NOT NULL,
    categoria_id VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE topicos
(
    id             BIGINT       NOT NULL AUTO_INCREMENT,
    titulo         VARCHAR(200) NOT NULL,
    mensaje        VARCHAR(500) NOT NULL,
    fecha_creacion TIMESTAMP    NOT NULL,
    estatus        VARCHAR(50)  NOT NULL,
    autor_id       BIGINT       NOT NULL,
    curso_id       BIGINT       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (autor_id) REFERENCES usuarios (id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE respuestas
(
    id             BIGINT       NOT NULL AUTO_INCREMENT,
    titulo         VARCHAR(200) NOT NULL,
    mensaje        VARCHAR(500) NOT NULL,
    fecha_creacion TIMESTAMP    NOT NULL,
    autor_id       BIGINT       NOT NULL,
    topico_id      BIGINT       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (autor_id) REFERENCES usuarios (id),
    FOREIGN KEY (topico_id) REFERENCES topicos (id)
);