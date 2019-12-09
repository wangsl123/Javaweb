## like

一般通配符的使用:
%:任意多个字符,包括0个字符

_:任意单个字符



### #案例:查询员工中名字包含字母a的员工信息

```SQL
SELECT *
FROM employees
WHERE last_name LIKE '%a%';
```

### 案例:查询员工中名字第三个字母为n,第五个为l的员工信息.

```SQL
SELECT *
FROM employees
WHERE last_name LIKE '__n_l%';
```



### 案例:查询员工名字第二个字符为_的员工信息

```SQL
SELECT *
FROM employees
WHERE last_name LIKE '_\_%' ESCAPE'\';
```

## between     and   

### 案例：查询员工编号在20到50之间的员工信息

```SQL
SELECT *
FROM employees
WHERE employee_id between 100 and 120;	
```



## in

### 案例：查询员工的工种编号是IT_PROG,AD_VP,AD_PRES的员工信息

```SQL
 SELECT *
FROM employees
WHERE job_id in('IT_PROG','AD_VP','AD_PRES');
```

## is null

### 案例：查询没有奖金的员工和奖金率

```SQL
  SELECT last_name,commission_pct
  FROM employees
  where commission_pct is null;
```

## 安全等于<=>

### 案例：查询没有奖金的员工和奖金率

```sql
SELECT last_name,commission_pct
  FROM employees
  where commission_pct <=> null;
```

### 案例：查询工资等于12000的员工信息

```SQL
  SELECT last_name,salary
  FROM employees
  where salary <=> 12000;
```

