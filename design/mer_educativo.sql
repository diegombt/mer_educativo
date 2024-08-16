/*
 * Esta tabla se encarga de registrar la información relacionada con las asignaturas de la factultad
 * Una asignatura esta restringida por facultad
 */
CREATE TABLE [asignatura] (
  [id_asignatura] integer PRIMARY KEY,
  [nombre] integer,
  [facultad] varchar(255),
  [creditos] integer
)
GO
create table prueba (columna integer);
/*
 * Otra documentación
 */
CREATE TABLE [alumno] (
  [id_alumno] integer PRIMARY KEY,
  [nombre] nvarchar(255),
  [fecha_nacimiento] datetime,
  [telefono] nvarchar(255),
  [estado] nvarchar(255)
)
GO

/*
 * Esto es interesante? mes escuchan bien?
 */
CREATE TABLE [instructor] (
  [id_instructor] integer PRIMARY KEY,
  [nombre] nvarchar(255),
  [especialidad] nvarchar(255),
  [telefono] nvarchar(25)
)
GO

CREATE TABLE [detalles_asignatura] (
  [id_detalles_asignatura] integer PRIMARY KEY,
  [id_asignatura] integer,
  [id_instructor] integer,
  [fecha_inicio] datetime,
  [fecha_fin] datetime,
  [año] integer
)
GO

CREATE TABLE [detalles_inscripcion] (
  [id_detalles_inscripcion] integer PRIMARY KEY,
  [id_asignatura] integer,
  [id_alumno] integer,
  [fecha_inscripcion] datetime,
  [fecha_actualizacion] datetime,
  [fecha_cancelacion] datetime,
  [estado] nvarchar(255)
)
GO

ALTER TABLE [detalles_asignatura] ADD FOREIGN KEY ([id_asignatura]) REFERENCES [asignatura] ([id_asignatura])
GO

ALTER TABLE [detalles_asignatura] ADD FOREIGN KEY ([id_instructor]) REFERENCES [instructor] ([id_instructor])
GO

ALTER TABLE [detalles_inscripcion] ADD FOREIGN KEY ([id_alumno]) REFERENCES [alumno] ([id_alumno])
GO

ALTER TABLE [detalles_inscripcion] ADD FOREIGN KEY ([id_asignatura]) REFERENCES [asignatura] ([id_asignatura])
GO
