
 
-- Q2 PROCEDURE 
CREATE OR REPLACE PROCEDURE HW1 (dep_id IN system.departments.department_id%type ,manag_id in system.departments.manager_id%type) 
AS 
BEGIN
update system.departments 
set manager_id=manag_id
where department_id=dep_id;
END HW1;

--Q3 Function
CREATE OR REPLACE FUNCTION FUNCTION2(dep_id system.departments.department_id%TYPE)  RETURN VARCHAR2 AS 
v_name system.employees.first_name%type;
v_last system.employees.last_name%type;
v_result system.employees.first_name%type;
BEGIN
select first_name,last_name into v_name,v_last
from system.employees
where department_id=dep_id;

select concat(v_name,v_last) into v_result from dual;
return v_result;
END FUNCTION2;
