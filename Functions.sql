use anandhu;
alter table persons add column DOB date;
update persons set DOB = "2000-11-02" where Id = 1;
update persons set DOB = "2001-12-12" where Id = 2;
update persons set DOB = "1999-01-21" where Id = 3;
update persons set DOB = "1998-10-11" where Id = 4;
update persons set DOB = "2000-7-17" where Id = 5;
update persons set DOB = "2003-11-30" where Id = 6;
update persons set DOB = "1997-02-12" where Id = 7;
update persons set DOB = "2004-03-27" where Id = 8;
update persons set DOB = "1998-09-19" where Id = 9;
update persons set DOB = "2000-03-07" where Id = 10;
delimiter &&
create function calAge(DOB date)
returns int
deterministic
begin
	declare age int;
    set age = timestampdiff(year, DOB, curdate());
    return age;
end &&
delimiter ;

select Fname, Lname, DOB, calage(DOB) as Age from persons;
select Country_name, char_length(Country_name) as Name_length from country;
select Country_name, left(Country_name, 3) as FirstThreeletter from country;
select Country_name, upper(Country_name) as uppercasename, lower(Country_name) as lowercasename from country;

    
    
