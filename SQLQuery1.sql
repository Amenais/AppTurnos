use turnos

exec Usuarios_Agregar 'admin', '123ABC', 'AppTurnos'
exec Usuarios_Agregar 'CommonUser', '456XYZ', 'AppTurnos'

create procedure Usuarios_Agregar
	@Usuario	varchar(50),
	@Contraseña varchar(50),
	@PassPhrase varchar(50)
as
insert into Usuarios
	(Usuario, Contraseña)
values
	(@Usuario, ENCRYPTByPassPhrase(@PassPhrase, @Contraseña))

exec Usuarios_Validar 'admin', '123ABC', 'AppTurnos'
exec Usuarios_Validar 'CommonUser', '456XYZ', 'AppTurnos'

create procedure Usuarios_Validar
	@Usuario	varchar(50),
	@Contraseña varchar(50),
	@PassPhrase varchar(50)
as
	select * from Usuarios
	where Usuario = @Usuario
		  and CONVERT(varchar(50), DECRYPTByPassPhrase(@PassPhrase, @Contraseña)) = @Contraseña
	
	

select * from Usuarios