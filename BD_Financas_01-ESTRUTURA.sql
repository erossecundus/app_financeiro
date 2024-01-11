drop database if exists bd_FincancasUPXII;
create database  bd_FincancasUPXII;
use bd_FincancasUPXII;


create table Categoria (
	Nome_Categ		varchar(20) not null,
    Icone_Categ		varchar(20),
    Cor_Categ		varchar(20),
  
    primary key (Nome_Categ)
    );
    
create table Subcategoria (
	Nome_Subcateg			varchar(20) not null,
	Icone_Subcateg			varchar(20),
    Cor_Subcateg			varchar(20),
    Nome_Categ				varchar(20) not null,
  
    primary key (Nome_Subcateg),
    foreign key (Nome_Categ) references Categoria (Nome_Categ)
    );
    
create table Conta (
	ID_Conta			int not null,
    Banco_Conta			varchar(15) not null,
    Tipo_Conta			varchar(15) not null,
    SaldoInicial_Conta	decimal(11,2) not null,
    
    primary key (ID_Conta)
    );
    
create table Movimentacao (
    ID_Movimentacao	int not null,
    Data_Movim		datetime not null,
    Tipo_Movim		varchar(10) not null check (Tipo_Movim='despesa' or Tipo_Movim='receita'),
    Descr_Movim		varchar(25) not null,
    Valor_Movim		decimal(11,2) not null,
    FormaPgto_Movim	varchar(10) not null,	
    Local_Movim		varchar(45),
    Obs_Movim		varchar(45),
	ID_Conta		int not null,
    Nome_Subcateg	varchar(20) not null,
    
    primary key (ID_Movimentacao),
    foreign key (ID_Conta) references Conta (ID_Conta),
    foreign key (Nome_Subcateg) references Subcategoria (Nome_Subcateg)
    );
    

    