# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

SELECT companyName,name
FROM
(SELECT company.id,companyName,MAX(salary) as maxsal
FROM employee,company
where employee.companyId = company.id
GROUP BY company.id,companyName) as a,employee as e
where a.id = e.companyId AND maxsal = e.salary