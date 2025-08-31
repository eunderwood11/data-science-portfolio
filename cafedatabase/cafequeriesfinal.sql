use cafedb;

SELECT
  itemCode,
  name,
  listPrice
FROM
  menu
WHERE
  available = TRUE
ORDER BY
  listPrice DESC;
  
  -- Q2 
SELECT
  MAX(orderquantity) AS max_single_order_qty
FROM
  Orders;
  
  
select concat(prefix, ' ', firstName, ' ', lastName, ' ', ifnull(suffix, '')) fullName, 
concat(address, ' ', ifnull(address2, ''), ', ', city, ', ', state, ', ', zip) address
from employee;

select supplyName, quantity, (unitPrice*quantity) as cost from inventory;

select name, description, categoryName, concat('$', format(listprice, 2, 'en_US')) price from menu
left outer join category on category_categoryID = categoryID;

select concat(firstName, ' ', lastName) fullName, date, starttime, endtime, wage, overtime, (overtime*wage*1.5) as overtimePay
from shift
join employee on employeeID = employee_employeeID;

select roleName, concat(firstName, ' ', lastName) fullName from employee_has_role
join role on roleID = role_roleID
join employee on employeeID = employee_employeeID;

-- most expensive item
select name, listprice
from menu
where listprice = (select max(listprice) from menu);

-- employees earning abve average wage    
select firstname,lastname, wage, r.rolename
from employee e
join employee_has_role h on e.employeeid=h.employee_employeeid
join role r on h.role_roleid=r.roleID
where wage > (select avg(wage) from Employee);

-- location with least seating
select name
from (select l.name, sum(s.tablecapacity) as totalCapacity from Seating s
    join Location l on s.location_locationid = l.locationid
    group by l.name) as capacity_by_location
order by totalCapacity asc
limit 1;


-- referential integrity
Insert into orders (orderID, menuCode, orderquantity, orderdate, ordernotes) values(9, 101, 1, ‘2025-05-08’)


-- views
create view employeeaddress as 
select firstname, lastname, address, address2, city, state, zip, phone, email
from employee;
