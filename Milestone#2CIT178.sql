CREATE DATABASE Color;

GO
USE Color;
CREATE TABLE Zipcode(
	Zipcode varchar(10) NOT NULL,
	City varchar(20),
	State varchar(2),
	PRIMARY KEY(Zipcode)
);
GO
CREATE TABLE Dept(
	ID int,
	Name varchar(20) NOT NULL,
	PRIMARY KEY(ID)

);
GO
CREATE TABLE Location(
	ID int,
	Name varchar(20) NOT NULL,
	Address varchar(50),
	Zipcode varchar(10) NOT NULL,
	PRIMARY KEY(ID)

);
GO
CREATE TABLE Job(
	ID int,
	Name varchar(15) NOT NULL,
	DeptID int,
	PRIMARY KEY(ID)

);
GO
CREATE TABLE Managers(
	ID int,
	FirstName varchar(20) NOT NULL,
	LastName varchar(30) NOT NULL,
	MiddleInitial varchar(3) NOT NULL,
	Email varchar(30),
	CellPhone varchar(15),
	JobID int,
	PRIMARY KEY(ID)

);
GO
CREATE TABLE Employees(
	ID int NOT NULL,
	FirstName varchar(20) NOT NULL,
	LastName varchar(30) NOT NULL,
	MiddleInitial varchar(3) NOT NULL,
	Address varchar(50),
	Zipcode varchar(10) NOT NULL,
	Email varchar(30),
	CellPhone varchar(15),
	ManagersID int,
	LocationID int,
	JobID int,
	PRIMARY KEY(ID)
);
