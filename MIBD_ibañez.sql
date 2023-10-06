CREATE TABLE rol (
  id_rol INT IDENTITY(1,1) PRIMARY KEY,
  nombre VARCHAR(255)
);
-- Crear tabla usuarios
CREATE TABLE usuario (
  id_usuario INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  username VARCHAR(16) NOT NULL,
  password VARCHAR(32) NOT NULL,
  Rol_idRol INT NOT NULL,
  CONSTRAINT fk_usuario_Rol FOREIGN KEY (Rol_idRol) REFERENCES Rol (id_Rol)
);

-- Crear tabla estudiante
CREATE TABLE estudiante (
  id_est INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  genero VARCHAR(45) NOT NULL,
  fech_nac VARCHAR(45) NOT NULL,
  usuario_id_usuario INT NOT NULL,
  CONSTRAINT fk_estudiante_usuario1 FOREIGN KEY (usuario_id_usuario) REFERENCES usuario (id_usuario)
);

-- Crear tabla docente
CREATE TABLE docente (
  id_doc INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  usuario_id_usuario INT NOT NULL,
  CONSTRAINT fk_docente_usuario1 FOREIGN KEY (usuario_id_usuario) REFERENCES usuario (id_usuario)
);

-- Crear tabla inscripcion
CREATE TABLE inscripcion (
  id_inscrp INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  materia VARCHAR(45) NOT NULL,
  sigla VARCHAR(45) NOT NULL,
  horario VARCHAR(45) NOT NULL,
  carrera VARCHAR(45) NOT NULL,
  estudiante_id_est INT NOT NULL,
  CONSTRAINT fk_inscripcion_estudiante1 FOREIGN KEY (estudiante_id_est) REFERENCES estudiante (id_est)
);
-- Crear tabla notas en SQL Server
CREATE TABLE notas (
  id_nota INT IDENTITY(1,1) PRIMARY KEY,
  nota VARCHAR(45) NOT NULL,
  docente_id_doc INT NOT NULL,
  estudiante_id_est INT NOT NULL,
  inscripcion_id_inscrp INT NOT NULL,
  FOREIGN KEY (docente_id_doc) REFERENCES docente (id_doc),
  FOREIGN KEY (estudiante_id_est) REFERENCES estudiante (id_est),
  FOREIGN KEY (inscripcion_id_inscrp) REFERENCES inscripcion (id_inscrp)
);
select * from rol
INSERT INTO rol (nombre)VALUES ('admin');
INSERT INTO rol (nombre)VALUES ('docente');
INSERT INTO rol (nombre)VALUES ('estudiante');
select * from usuario
INSERT INTO usuario (username,password,Rol_idrol)VALUES ('juan','1234',1);
INSERT INTO usuario (username,password,Rol_idrol)VALUES ('pedro','1234',2);
INSERT INTO usuario (username,password,Rol_idrol)VALUES ('jose','1234',2);
INSERT INTO usuario (username,password,Rol_idrol)VALUES ('aaa111','1234',3);
INSERT INTO usuario (username,password,Rol_idrol)VALUES ('bb222','1234',3);
INSERT INTO usuario (username,password,Rol_idrol)VALUES ('nnn344','1234',3);
select * from estudiante
insert into estudiante (nombre,apellido,genero,fech_nac,usuario_id_usuario)values('aaa1','lllll','masculino','20/05/2000',3);
insert into estudiante (nombre,apellido,genero,fech_nac,usuario_id_usuario)
values('b222','lllll','masculino','29/05/2011',3);
insert into estudiante (nombre,apellido,genero,fech_nac,usuario_id_usuario)
values('nn344','lllll','femenino','30/03/1999',3);
select * from docente
insert into docente(nombre,apellido,usuario_id_usuario)values('pedro','kkkk',2);
insert into docente(nombre,apellido,usuario_id_usuario)values('jose','vvvvv',2);
select * from inscripcion
insert into inscripcion(materia,sigla,horario,carrera,estudiante_id_est)
values('programacion web','inf-322','lunes y martes 08-10 am','informatica',1);
insert into inscripcion(materia,sigla,horario,carrera,estudiante_id_est)
values('programacion logica','inf-325','lunes y mierciles 12-14 pm','informatica',1);
insert into inscripcion(materia,sigla,horario,carrera,estudiante_id_est)
values('calculo','mat-315','lunes  12-14 pm','informatica',1);
insert into inscripcion(materia,sigla,horario,carrera,estudiante_id_est)
values('programacion web','inf-322','lunes y martes 08-10 am','informatica',2);
insert into inscripcion(materia,sigla,horario,carrera,estudiante_id_est)
values('programacion multimedial','inf-450','jueves 12-14 pm','informatica',2);
insert into inscripcion(materia,sigla,horario,carrera,estudiante_id_est)
values('calculo','mat-315','lunes  12-14 pm','informatica',2);
select * from notas
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('63',1,1,1);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('80',1,1,2);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('40',1,2,1);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('60',1,2,2);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('20',2,1,1);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('51',2,1,1);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('30',2,1,1);
insert into notas(nota,docente_id_doc,estudiante_id_est,inscripcion_id_inscrp)
values('75',2,1,2);