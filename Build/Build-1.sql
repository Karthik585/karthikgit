INSERT INTO dw_empl
  SELECT employee_id, first_name, last_name, hire_date, salary, department_id 
  FROM employees
  WHERE hire_date > sysdate - 7
  LOG ERRORS INTO err_empl ('daily_load') REJECT LIMIT 25
