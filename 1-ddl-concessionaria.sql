--1
create database Concessionaria
GO

-- 2
use Concessionaria
GO

-- 3
create table Veiculo (
	chassi varchar(17) not null,
	marca varchar(10) null,
	modelo varchar(20) null,
	anoFabricacao int null,
	anoModelo int null,
	combustivel char(1) null,
	primary key(chassi)
)
GO

-- 4
alter table Veiculo
add valor decimal(7,2) null,
motor varchar(20) null
GO

-- 5
alter table Veiculo
drop column motor
GO

-- 6
create index VeiculoMarcaModelo
on Veiculo (marca asc, modelo asc)

-- 7
create index VeiculoAnoFabricacao
on Veiculo (anoFabricacao desc)
GO

-- 8
drop index VeiculoMarcaModelo
on Veiculo;

-- 9
drop table Veiculo

-- 10
use master
drop database Concessionaria
