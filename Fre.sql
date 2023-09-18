create database GMReg
go

use GMReg 
create table RegTable(
firstname varchar(20) not null,
lastname varchar(20) not null,
mobileno bigint not null,
email varchar(50) not null unique,
cpassword varchar(100) not null,
addresss varchar(255)not null,
gender varchar(10) not null,
pincode int not null,
country varchar(10) not null,
statuss varchar(10) not null
);

select * from dbo.RegTable;

create or alter  proc usp_RegInsert(
@firstname varchar(20),
@lastname varchar(20),
@mobileno bigint ,
@email varchar(50),
@cpassword varchar(100),
@addresss varchar(255),
@gender varchar(10),
@pincode int,
@country varchar(10),
@statuss varchar(10)
)
as insert into dbo.RegTable values(@firstname,@lastname,@mobileno,@email,@cpassword,@addresss,@gender,@pincode,@country,@statuss )
return


