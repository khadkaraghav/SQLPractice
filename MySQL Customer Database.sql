create database customer;
use customer;

select count(*) 'Customer Count' from Customer;  -- returns 300. It counts the number of database record fromt the excel file. Customer Count is just the reference generated.

select count(distinct company) as 'Distinct Companies' from Customer; -- returns the distinct number which is 267

select * from customer;

alter table customer add CustomerID int not null primary key auto_increment; -- adds customer id from 1 to 300 with primary key

alter table customer add CompanyID int;  -- adds column CompanyID in customer table

select companyID, company from customer; -- companyID is null

create table Company(
companyID int NOT NULL auto_increment,
company varchar(255),
primary key (companyID)
);

select * from Company;

select distinct company from Customer where length(company)>0 and company is not null order by company;

truncate Company;
insert into Company (company) select distinct company from Customer where length(company)>0 and company is not null order by company;

select * from Company;

select companyID, Company from Company;

update Customer c set c.companyID = (select t.companyID from Company t where t.company = c.company);

select c.companyID, c.company, t.companyID, t.Company from customer c inner join Company t on c.CompanyID=t.CompanyID;

alter table customer drop column company; -- delete the column "company" from customer table

alter table customer drop column fullname; -- delete the column "fullname" from customer table

select CONCAT (`FirstName`,' ',`LastName`) as 'FullName' from customer; -- concats first name and last name and store as full name in the customer table.

select * from customer;

select * from Company;

select CONCAT(`FirstName`,' ',`LastName`) as `FullName`, customer.Company from customer 
inner join company on customer.companyID=company.companyID;

select * from customer where LastName='Smith';

select FirstName, Company, Position from customer where City='Virginia Beach'; 

select company, count(*) from customer group by company order by count(*) DESC;

select company, count(*) from customer group by company HAVING count(*)>2; 

select State, count(*) from customer group by State order by count(*) DESC;
 
update customer SET LastName='Smith' WHERE FirstName='Paula' AND State='CA' AND City='Anaheim';

select FirstName, LastName from customer where State ='CA' AND City='Anaheim' order by FirstName DESC;

select * from customer where FirstName='Vanessa' and LastName='Smith';

update customer SET LastName='Smith' where customerID=3;

select * from customer where LastName='Smith';

Select count(*) from customer where LastName like 'S%';













 

















