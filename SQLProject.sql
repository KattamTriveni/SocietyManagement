create database FinalDB
use FinalDB
create table Society(SocID int Primary key,
SName varchar(50),
Addres nvarchar(50),
City nvarchar(50),
Pincode nvarchar(50),
NoHouse int)
create table House(HID int primary key,
BlockNo int ,
Typ nvarchar(50),
SName nvarchar(50))
create table UserMst(UserID int primary key, 
FullName nvarchar(50) ,
Email nvarchar(50) ,
Mobile nvarchar(50) ,
HID int,
SName nvarchar(50) ,
Member int ,
UserName nvarchar(50) ,
Passwords nvarchar(50))
create table Rent(RID int primary key,
HID int,
SName nvarchar(50) ,
UserID int ,
Rent float)
create table Sell(SellId int primary key, 
HID int ,
SName nvarchar(50) ,
UserID int ,
Sell float)
select * from Society
select * from House
select * from UserMst