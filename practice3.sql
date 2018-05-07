#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

SELECT companyName,AVG(salary) as avgSalary
FROM company,employee
WHERE company.id = employee.companyId
GROUP BY companyName
ORDER BY avgSalary DESC
LIMIT 1

