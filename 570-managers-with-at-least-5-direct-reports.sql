select name from employee join (select managerid from employee group by managerid 
having count(managerid)>=5) as a2
on employee.id=a2.managerid
