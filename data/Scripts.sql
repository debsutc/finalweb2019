--CREATE DATABASE UniWeb;
go

use UniWeb;
go

create table Estudiante
(
	id int identity(1,1) not null primary key,
	cedula nvarchar(16) not null unique,
	nombres nvarchar(50) not null,
	apellidos nvarchar(50) not null,
	telefono nvarchar(10)
)
go

--create procedure Estudiante_set
alter procedure Estudiante_set
	@id int=null output,
	@cedula nvarchar(16),
	@nombres nvarchar(50),
	@apellidos nvarchar(50),
	@telefono nvarchar(10)=null
as
begin
	Declare @idTmp int
	Select @idTmp = id from Estudiante where cedula=@cedula;

	IF @idTmp is null
	BEGIN
		Insert into Estudiante(cedula,nombres,apellidos,telefono)
			values (@cedula,@nombres,@apellidos,@telefono);

		Set @id = @@IDENTITY
	END
	ELSE
	BEGIN
		UPDATE Estudiante set
			nombres = upper(@nombres),
			apellidos = upper(@apellidos),
			telefono = @telefono
			Where cedula=@cedula
	END
end
go

--Exec Estudiante_set 1,'0020804965417A','JUAN','LOPEZ','123456'
--SELECT * FROM Estudiante
GO
CREATE PROCEDURE Estudiante_get
	@id int=null
as
BEGIN
	IF @id IS NULL
	BEGIN
		SELECT * FROM Estudiante ORDER BY 1
	END
	ELSE
	BEGIN
		SELECT * FROM Estudiante
			WHERE ID=@id
	END
END
GO
--EXEC Estudiante_get 2