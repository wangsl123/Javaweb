## 一.按条件表达式筛选

### #案例：查询工资>12000的员工信息

```SQL
SELECT * FROM employees
WHERE salary>12000;
```

### 案例：查询部门号不等于90的员工姓名和部门编号

```SQL
 SELECT last_name,department_id 
 FROM employees
 where department_id!=90;
```



## 二.按逻辑表达式筛选

### 案例:查询工资在10000到20000之间的员工名,工资及奖金

```SQL
SELECT last_name,salary,commission_pct
FROM employees
WHERE salary>=10000 and salary<=20000;	
```



### 案例:查询部门不再90到110之间,或者工资高于15000的员工信息

```SQL
 SELECT *
 FROM employees
 WHERE department_id<90 or department_id>110 or salary>15000;
```

