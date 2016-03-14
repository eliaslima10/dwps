-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-11 15:27:34.616




-- tables
-- Table: d_campus
CREATE TABLE d_campus (
    campus_sk serial  NOT NULL,
    cod_campus int  NULL,
    nome_campus varchar(100)  NULL,
    date_from date  NULL,
    date_to date  NULL,
    version int  NULL,
    CONSTRAINT d_campus_pk PRIMARY KEY (campus_sk)
);



-- Table: d_curso
CREATE TABLE d_curso (
    curso_sk serial  NOT NULL,
    cod_curso int  NULL,
    nome_curso varchar(250)  NULL,
    date_from date  NULL,
    date_to date  NULL,
    version int  NULL,
    CONSTRAINT d_curso_pk PRIMARY KEY (curso_sk)
);



-- Table: d_data
CREATE TABLE d_data (
    data_sk serial  NOT NULL,
    campo_data date  NULL,
    ano int  NULL,
    mes int  NULL,
    dia_do_ano int  NULL,
    dia_do_mes int  NULL,
    dia_da_semana int  NULL,
    semana_do_ano int  NULL,
    dia_da_semana_desc varchar(150)  NULL,
    dia_da_semana_desc_curta varchar(150)  NULL,
    mes_desc varchar(150)  NULL,
    mes_desc_curta varchar(150)  NULL,
    trimestre int  NULL,
    CONSTRAINT d_data_pk PRIMARY KEY (data_sk)
);



-- Table: f_inscrito
CREATE TABLE f_inscrito (
    pk serial  NOT NULL,
    campus_sk int  NOT NULL,
    curso_sk int  NOT NULL,
    data_sk int  NOT NULL,
    quantidade int  NOT NULL,
    CONSTRAINT f_inscrito_pk PRIMARY KEY (pk)
);







-- foreign keys
-- Reference:  f_inscrito_d_campus (table: f_inscrito)

ALTER TABLE f_inscrito ADD CONSTRAINT f_inscrito_d_campus 
    FOREIGN KEY (campus_sk)
    REFERENCES d_campus (campus_sk)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  f_inscrito_d_curso (table: f_inscrito)

ALTER TABLE f_inscrito ADD CONSTRAINT f_inscrito_d_curso 
    FOREIGN KEY (curso_sk)
    REFERENCES d_curso (curso_sk)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  f_inscrito_d_data (table: f_inscrito)

ALTER TABLE f_inscrito ADD CONSTRAINT f_inscrito_d_data 
    FOREIGN KEY (data_sk)
    REFERENCES d_data (data_sk)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

