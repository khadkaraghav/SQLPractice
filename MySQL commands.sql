-- DDL to create the database

create database testdb;
use testdb;

-- DDL : Data Definition Language to create a table

CREATE TABLE person( 
              id INTEGER PRIMARY KEY, 
              first_name VARCHAR(50), 
              last_name VARCHAR(50), 
              age INTEGER
              );
              
              
              -- READ
              
select id, first_name, last_name, age from person;
              
              -- CREATE
              
insert into person values (1,'Raghav','Khadka',24);
              
                  -- READ
              
select id, first_name, last_name, age from person;

 -- UPDATE
 
 update person set first_name = 'Barsha' where id = 1;
 
 select id, first_name, last_name, age from person;
 
 -- DELETE
 
 delete from person where id=1;
 
  select id, first_name, last_name, age from person;

 
 
 

 
 


              
              