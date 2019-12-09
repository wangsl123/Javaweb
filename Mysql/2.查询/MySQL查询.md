## #去重：

### 案例：查询员工表中涉及到的部门编号

```sql
SELECT distinct department_id FROM employees;
```



## #+的作用：

Java中的+：

①运算符  ②连接符



MySQL中的+：

运算符

```SQL
select ‘123’+90；其中一个为字符型，则试图将字符型转换为数字型。
select 'jphn'+90;若转换失败，则将字符型装换位0；
select null+90；若其中一方为null，则结果为null；

```



### 案例：查询员工名与姓连接成一个字段，并显示为姓名。

```SQL
SELECT concat(last_name,first_name) as 姓名
FROM employees;
```

