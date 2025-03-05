
SELECT employee_id, first_name, job_id, job_title, max_salary, min_salary, commission_pct, salary
 from employees NATURAL JOIN jobs
 where job_title='';
 
 select * 
 from Employees;
 
  describe Employees;
  
  Select first_name, Department_name, Street_address, City, Country_name
  from Employees
  NATURAL JOIN departments
  NATURAL JOIN countries
  NATURAL JOIN locations;
  
  
  
  
SELECT employee_id, last_name, 
location_id, department_id,department_name
 FROM   employees JOIN departments
 USING (department_id) ;
 
 
 
 
  SELECT l.city, d.department_name 
FROM   
locations l JOIN departments d
 on l.location_id = d.location_id
 WHERE d.location_id = 1400;
 
 
Select e.first_name, d.Department_name, l.Street_address, l.City, c.Country_name
  from Employees e
  join  Departments d on e.department_id=d.department_id  
  join Locations l on l.location_id=d.location_id  
  join Countries c on l.country_id=c.country_id;
 
 
 
 
 
  
  
  
 