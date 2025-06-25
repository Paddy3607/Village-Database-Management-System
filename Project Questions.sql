
>>> Questions on joins
Q 1) display details of villages along with peoples along with jobs;
select * from villages v 
inner join peoples p on(v.village_id=p.village_id)
inner join jobs j on (p.people_id=j.people_id);

Q 2) display details of grampanchayat along with schools along with shopes.
select distinct g.*,s.*,sc.* from grampanchayat g 
inner join shopes s on (g.people_id=s.people_id)
inner join locations l on(s.sub_village_id = l.sub_village_id)
inner join schools sc on (l.location_id=sc.location_id);

Q 3) display details of grampanchayat along with peoples for people background is farmer.
select * from grampanchayat g inner join peoples p 
on (g.people_id=p.people_id) where p.background='farmer';

Q 4)display details of all locations along with all peoples.
select * from locations l full join peoples p on (l.sub_village_id=p.sub_village_id);

Q 5) Display details of peoples,students,school for vehicle type.
select * from peoples p 
inner join students s on (p.people_id=s.people_id)
inner join schools sc on(s.school_id=sc.school_id)
inner join vehicles v on (p.people_id=v.people_id);

Q 6)Display job wise count of peoples
select j.job_id,count(p.people_id) from peoples p inner join jobs j on (p.people_id=j.people_id) group by job_id;

Q 7)Display details of schools,shopes,students whose people born in april.
select * from schools sc inner join students s on (sc.school_id=s.school_id)
inner join shopes sh on (s.people_id=sh.people_id)
inner join peoples p on (sh.people_id=p.people_id) where to_char(p.dob,'mon')='april';

Q 8)Display 1st 3 highest peoples then salary in jobs.
select p.*,t.* from peoples p join 
(select people_id as data1 ,salary as data2 from (select people_id, salary from jobs order by salary  desc) 
where rownum<=3) t
on (p.people_id=t.data1)
--or
select p.* from 
(select p.* from jobs j join peoples p on (j.people_id=p.people_id) order by j.salary desc)p  
 where rownum <=3 

Q 9)Display location wise count of peoples.
select l.location_id,count(*)  from locations l join sub_village s
on (l.sub_village_id=s.sub_village_id)
join peoples p
on (s.sub_village_id=p.sub_village_id)
group by location_id;

Q 10)accept people id from user and display all details from all table.
select * from grampanchayat g
join villages v on (g.village_id=v.village_id)
join sub_village sv on (v.village_id=sv.village_id)
join locations l on (sv.sub_village_id=l.sub_village_id)
join temples t on (l.location_id=t.location_id)
join schools sc on (l.location_id=sc.location_id)
join peoples p on (sv.village_id=p.village_id)
join vehicles v1 on (p.people_id=v1.people_id)
join jobs j on (p.people_id=j.people_id)
join shopes s on (sv.sub_village_id=s.sub_village_id)
where p.people_id='&x1'

join students st on (p.people_id=st.people_id)

Q 11)non equi join  and its logical example
select * from grampanchayat g join peoples p 
on(g.people_id < p.people_id);

Q 12) union set operator and its logical example
select first_name from peoples
union
select post_name from grampanchayat;
--or
select first_name from peoples
union 
select student_id from students;

Q 13)Right Outer join
select * from peoples p right outer join grampanchayat g 
on (p.people_id=g.people_id); 

Q 14)group by clause on multiple column
select sub_village_id ,count(*) from peoples group by sub_village_id;

select sub_village_id ,count(people_id)from peoples group by sub_village_id having count(people_id) >5;

select sub_village_id ,home_id,count(*) from peoples group by sub_village_id,home_id;

select background,count(*) from peoples group by background ;

Q 15)group by grouping sets clause on multiple column
select background,gender,count(*) from peoples group by grouping sets(background,gender);
select background,gender,count(*) from peoples group by rollup(background,gender);
select background,gender,count(*) from peoples group by cube(background,gender);

Q 16)perform general function
select nvl2(background,'data is not null','data is null') as nvl2 from peoples;
select nvl(background,'data is null') as nvl from peoples;
select nullif(background,gender) as nullif from peoples;
select coalesce(gender,background,gender) as coalesce from peoples;

Q 17) case expression
>>> simple case expression
select first_name,gender,
case gender
when 'male' then 'i am male' 
when 'female' then 'i am female'
else 'other'
end
as xyz
from peoples;

>>> search case expression
select first_name,age,
case 
when age>30 then 'i am old person' 
when age<=30 and age >= 25 then 'i am young person'
else 'i am small person'
end
as xyz
from peoples;

Q 18) rank and dense rank function
select first_name,age,rank() over(order by age desc) as data1,
dense_rank() over(order by age desc ) as data2 from peoples;

>>> Questions on subquery

Q 19) Write a sql query to display those peoples who receive a higher salary 
      than the people id is P40.Return first name and last name.

select p.first_name ,p.last_name from jobs j join peoples p on(j.people_id=p.people_id)
where j.salary > (select salary from jobs where people_id='P40');

Q 20) write a sql query to find out same designation as employee id is P27.Return first name,last name,subvillage id 

select p.first_name,p.last_name,p.sub_village_id from peoples p join jobs j on (p.people_id=j.people_id) 
where j.job_id = (select job_id from jobs where people_id='P27');


Q 21) Write a sql query to find those peoples who earn more than average salary.
      Return first_name,last_name,employee_id.
      
select p.first_name,p.last_name,p.sub_village_id from peoples p join jobs j on (p.people_id=j.people_id) 
where salary > (select avg(salary) from jobs );



PL/SQL program

Q 1) display the full name of people id is P40.

set serveroutput on;
declare
  full_name varchar2(100);
begin
  select first_name ||' '|| last_name into full_name from peoples where people_id='P40';
  dbms_output.put_line('Full name is ' || full_name);
end;

Q 2) display the full name of police patil post

set serveroutput on;
declare
  full_name varchar2(100);
begin
  select p.first_name ||' '|| p.last_name into full_name from peoples p join  grampanchayat g
  on(p.people_id=g.people_id) where g.post_name='Police Patil';
  dbms_output.put_line(full_name);
end;
/


>>>questions on cursors;
Q) display the those people which peoples background has farmer.

set serveroutput on;
declare
  cursor c1 is select * from peoples where background='farmer';
  v1 c1%rowtype;
begin
  open c1;
    loop
      fetch c1 into v1;
      exit when c1%notfound;
      dbms_output.put_line(v1.first_name || ' ' || v1.last_name);
    end loop;
  close c1;
end;
/
    
Q) display the those people which peoples background has jobs.

set serveroutput on;
declare
  cursor c1 is select * from peoples where background='job';
  v1 c1%rowtype;
begin
  open c1;
    loop
      fetch c1 into v1;
      exit when c1%notfound;
      dbms_output.put_line(v1.first_name || ' ' || v1.last_name);
    end loop;
  close c1;
end;
/   

Q) display the those people which peoples lives in Jotiba nagar

set serveroutput on;
declare
  cursor c1 is select * from peoples where sub_village_id='Jn';
  v1 c1%rowtype;
begin
  open c1;
    loop
      fetch c1 into v1;
      exit when c1%notfound;
      dbms_output.put_line(v1.first_name || ' ' || v1.last_name);
    end loop;
  close c1;
end;
/   

Q) display the male peoples

set serveroutput on;
declare
  cursor c1 is select * from peoples where gender='male';
  v1 c1%rowtype;
begin
  open c1;
    loop
      fetch c1 into v1;
      exit when c1%notfound;
      dbms_output.put_line(v1.first_name || ' ' || v1.last_name);
    end loop;
  close c1;
end;
/   


Q) display the those peoples which peoples caste in hindu maratha.

set serveroutput on;
declare
  cursor c1 is select * from peoples where caste='hindu_maratha';
  v1 c1%rowtype;
begin
  open c1;
    loop
      fetch c1 into v1;
      exit when c1%notfound;
      dbms_output.put_line(v1.first_name || ' ' || v1.last_name);
    end loop;
  close c1;
end;
/  




>> questions on procedure


Q) people id take from user and display first name and last name. 

create or replace procedure fn_ln (v1 varchar2)
is
  f_name varchar2(100);
  l_name varchar2(100);
begin
  select first_name,last_name into f_name,l_name from peoples where people_id=v1;
  dbms_output.put_line(f_name || ' ' ||l_name);
end;
/

set serveroutput on;
execute fn_ln ('&x');


Q ) create procedure background take from user and display first name and last name.

create or replace procedure background (v1 varchar2)
is
cursor c1 is
select first_name,last_name from peoples where background=v1;
begin
  for i in c1 loop
    dbms_output.put_line(i.first_name ||' '|| i.last_name);
    exit when c1%notfound;
  end loop;
end;
/

set serveroutput on;
execute background('&v1');

Q )job address take from user and display the choise sum,min,max,avg of salary

create or replace procedure sal_max(choise1 varchar2,v1 varchar2)
is
sal number(10);
j_add varchar2(10);
choise varchar2(100):=choise1;
begin
  if choise='sum' then
      select sum(salary),address into sal,j_add from jobs where address=v1 group by address;
        if j_add=v1 then
          dbms_output.put_line( 'sum of salary is ' || sal);
        else
          dbms_output.put_line('people_id is not valid');
        end if;
  elsif  choise='avg' then
      select avg(salary),address into sal,j_add from jobs where address=v1 group by address;
        if j_add=v1 then
          dbms_output.put_line( 'avg of salary is ' || sal);
        else
          dbms_output.put_line('people_id is not valid');
        end if;
  elsif choise='max' then
      select max(salary),address into sal,j_add from jobs where address=v1 group by address;
        if j_add=v1 then
          dbms_output.put_line( 'max of salary is ' || sal);
        else
          dbms_output.put_line('people_id is not valid');
        end if; 
  elsif choise='min' then
      select min(salary),address into sal,j_add from jobs where address=v1 group by address;
        if j_add=v1 then
          dbms_output.put_line( 'avg of salary is ' || sal);
        else
          dbms_output.put_line('people_id is not valid');
        end if;
  else
      dbms_output.put_line( 'invalid');
  end if;
end;
/

set serveroutput on;
execute sal_max ('&choise','&v1');
