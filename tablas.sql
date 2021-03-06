CREATE DATABASE Examen;
GO

Use Examen;
GO
CREATE TABLE Georreferencias 
(
idGeorreferencia int PRIMARY KEY NOT NULL,
idEstado int NOT NULL,
latitud float NOT NULL,
longitud float NOT NULL 
)
GO

select from Georreferencias;



CODIGO PARA CREAR NUEVA COLUMNA
CREATE TABLE [dbo].[Geopoint] ( [GeopointId] BIGINT NOT NULL PRIMARY KEY IDENTITY,
[Latitude] float NOT NULL, [Longitude] float NOT NULL,
[ts] ROWVERSION NOT NULL, [GeographyPoint] AS ([geography]STGeomFromText(((('POINT('+CONVERT([varchar](20),longitud))+' ')+CONVERT([varchar](20),latitud))+')',(4326))) )




CREATE TABLE Usuarios
(
idUsuario int PRIMARY KEY NOT NULL,
contrasenia varchar (15) NOT NULL,
nombre varchar(100) NOT NULL,
fechaNacimiento datetime2 NOT NULL,
rfc varchar(12) NOT NULL
)
GO

CREATE TABLE Estados
(
idEstado int PRIMARY KEY NOT NUll,
nombre varchar(20) NOT NULL,
abreviacion varchar(4) NOT NULL
)
GO

CREATE TABLE Permisos
(
idPermiso int PRIMARY KEY not null,
idUsuario int NOT NULL,
idEstado int NOT NULL,
CONSTRAINT fk_Usuario FOREIGN KEY (idUsuario) REFERENCES Usuarios (idUsuario),
CONSTRAINT fk_Estado FOREIGN KEY (idEstado) REFERENCES Estados (idEstado)
)
GO





Inserción de datos

INSERT INTO Estados (idEstado, nombre, abreviacion) values (1, 'AGUASCALIENTES', 'AGS');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (2, 'BAJA CALIFORNIA', 'BCN');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (3, 'BAJA CALIFORNIA SUR', 'BCS');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (4, 'CAMPECHE', 'CAMP');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (5, 'COAHUILA', 'COAH');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (6, 'COLIMA', 'COL');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (7, 'CHIAPAS', 'CHIS');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (8, 'CHIHUAHUA', 'CHIH');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (9, 'DISTRITO FEDERAL', 'DF');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (10, 'DURANGO', 'DGO');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (11, 'GUANAJUATO', 'GTO');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (12, 'GUERRERO', 'GRO');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (13, 'HIDALGO', 'HGO');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (14, 'JALISCO', 'JAL');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (15, 'ESTADO DE MEXICO', 'MEX');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (16, 'MICHOACAN', 'MICH');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (17, 'MORELOS', 'MOR');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (18, 'NAYARIT', 'NAY');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (19, 'NUEVO LEON', 'NL');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (20, 'OAXACA', 'OAX');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (21, 'PUEBLA', 'PUE');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (22, 'QUERETARO', 'QRO');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (23, 'QUINTANA ROO', 'QROO');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (24, 'SAN LUIS POTOSI', 'SLP');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (25, 'SINALOA', 'SIN');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (26, 'SONORA', 'SON');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (27, 'TABASCO', 'TAB');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (28, 'TAMAULIPAS', 'TAMP');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (29, 'TLAXCALA', 'TLAX');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (30, 'VERACRUZ', 'VER');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (31, 'YUCATAN', 'TUC');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (32, 'ZACATECAS', 'ZAC');
INSERT INTO Estados (idEstado, nombre, abreviacion) values (33, 'CIUDAD DE MÉXICO', 'CDMX');




INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (1,1,21.13180225,-89.50884361);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (2,1,22.302625,102.2263139);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (3,1,23.2336,103.3168167);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (4,1,23.23353333,103.3335528);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (5,1,22.07935,102.0409833);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (6,1,22.39769444,102.2899333);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (7,1,22.39863333,102.2900556);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (8,1,21.98357222,102.2667667);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (9,1,21.9836,102.2502306);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (10,1,22.616775,102.2335389);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (11,5,25.506789,-102.2433589);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (12,5,25.50705411,-102.2443927);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (13,5,26.30458298,-103.0647895);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (14,5,26.30687434,-103.0620606);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (15,5,26.30047677,-103.0553136);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (16,5,26.29786489,-103.0583045);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (17,5,26.30464132,-103.0648854);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (18,5,26.30694835,-103.0622138);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (19,5,26.31341072,-103.0691436);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (20,5,26.31077704,-103.0722422);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (21,25,24.20180556,107.1031389);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (22,25,2.201583333,107.1035556);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (23,25,24.22061111,107.1337222);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (24,25,24.22238889,107.1337222);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (25,25,24.10958333,107.0839722);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (26,25,24.11113889,107.08325);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (27,25,24.10941667,107.0788889);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (28,25,24.10727778,107.0763611);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (29,25,24.21880556,107.1337778);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (30,25,24.22055556,107.13375);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (31,14,20.62366667,103.8016111);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (32,14,20.44083333,103.9239167);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (33,14,20.48036111,103.9556111);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (34,14,20.48425,103.9726389);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (35,14,19.88372222,103.372);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (36,14,19.62819444,103.7716944);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (37,14,19.64733333,103.7284444);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (38,14,19.65225,103.7428056);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (39,14,19.65730556,103.7916111);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (40,14,19.5935,103.8120556);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (41,28,25.74877778,97.57894444);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (42,28,25.30605556,97.86688889);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (43,28,25.30605556,97.86688889);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (44,28,24.61438889,97.91577778);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (45,28,25.31441667,97.79305556);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (46,28,24.61452778,97.91575);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (47,28,25.29966667,97.85988889);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (48,28,25.29966667,97.85988889);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (49,28,25.74986111,97.60216667);
INSERT INTO Georreferencias(idGeorreferencia, idEstado, latitud,longitud) values (50,28,25.74986111,97.60218611);


INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (1,'abcde','PORCICULTORES EL HIBRIDO S DE RL','2005-01-11 1200','PHI0501116U3');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (2,'abcde','AGROPECUARIA EL GIGANTE S.A. DE C.V.','2000-01-14 1200','AGI000114C70');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (3,'abcde','PROVEEDORES AGROALIMENTARIOS DEL DISTRITO DE RIEGO 01 SPR DE RL','2004-05-28 1200','PAD0405282B1');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (4,'abcde','EL SILOGISMO SPR DE RL','1997-11-06 1200','SIL971106652');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (5,'abcde','PRODUCTORES UNIDOS DE LAGOS, S.C. DE R.L. DE C.V.','2005-07-11 1200','PUL0507113N6');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (6,'abcde','ALIMENTOS PROCESADOS EL ZARCO S DE R.L. M.I. DE C.V.','2006-02-01 1200','APZ060201412');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (7,'abcde','HSBC MEXICO S.A., INSTITUCION DE BANCA MULTIPLE GRUPO FINANCIERO HSBC','1995-01-25 1200','HMI950125KG8');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (8,'abcde','UNION GANADERA LAS TROJES','2005-11-14 1200','UGD0511148J3');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (9,'abcde','QUESOS LOS MARTINEZ, S. DE R.L. M.I. DE C.V.','2005-06-14 1200','QMA050614F17');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (10,'abcde','RANCHO MEDIO KILO, S. P.R. DE R.L.','1998-02-03 1200','RMK9802033P7');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (11,'abcde','MARTIN RUIZ BERNAL, S. DE P.R. DE R.L.','2002-02-20 1200','MRB0112136W7');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (12,'abcde','CHIVOS Y BORREGOS DE AGUASCALIENTES, S.P.R. DE R.L','2006-02-13 1200','CBA051107TKA');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (13,'abcde','GANADEROS UNIDOS DE TEQUILILLA','2002-12-19 1200','GUT021209P8G');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (14,'abcde','COMUNIDAD PRODUCTORA 2000, S.P.R.DE R.L.','1999-12-10 1200','CPD9912105S7');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (15,'abcde','INOVAGRO, S.A. DE C.V.','2003-06-16 1200','INO030616JN5');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (16,'abcde','GANADERIA LA GREÑUDA, S.C. DE R.L.','2006-06-24 1200','GGR060624JV4');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (17,'abcde','PRODUCTORES DE LA ESTANCIA DE CUQUIO, S.C.  DE  R.L.','2005-10-21 1200','PEC051021HX7');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (18,'abcde','GRANJA EL 13 DE LOS ACUÑA, S.P.R.  DE  R.L.','2004-03-27 1200','GTA040327Q39');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (19,'abcde','EL GREÑERO, S. DE R.L. DE C.V.','2002-05-08 1200','GRE0205086JA');
INSERT INTO Usuarios(idUsuario, contrasenia, nombre, fechaNacimiento, rfc) values (20,'abcde','AGRASISA, S.A. DE C.V.','2001-11-09 1200','AGR011109ST4');

DELETE FROM Usuarios WHERE idUsuario = 20;
select from Permisos;

INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (1,1,1);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (2,2,5);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (3,3,25);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (4,4,14);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (5,5,28);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (6,6,5);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (7,7,5);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (8,8,5);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (9,9,1);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (10,10,25);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (11,11,14);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (12,12,28);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (13,13,28);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (14,14,28);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (15,15,14);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (16,16,14);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (17,17,1);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (18,18,25);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (19,19,25);
INSERT INTO Permisos(idPermiso, idUsuario, idEstado) values (20,20,1);






DELETE FROM Permisos where idUsuario = 1;

select  from Permisos;