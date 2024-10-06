use master
go
if exists (select name from sys.databases where name = 'StudentsDB')
begin
	alter database StudentsDB set single_user with rollback immediate
	drop database StudentsDB
end
go
create database StudentsDB
go
use StudentsDB
go
create table Students
(
	Id int primary key identity(1, 1),
	Name nvarchar(50) not null,
	Surname nvarchar(50) not null,
	BirthDate datetime,
	GPA decimal(9, 1)
)