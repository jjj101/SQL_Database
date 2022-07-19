
/* Query to show Customer's orders, and the price of the order */

select concat(c.firstName, ' ', c.lastname) as 'Customer Name', co.orderNo, co.totalPrice
from Customer c
join CustomerOrder co 
on c.CustomerID = co.CustomerID

/*Total money spent by customers at the store */
select sum(totalprice) as 'Total Money Spent', concat(c.firstName, ' ', c.lastName) as 'Customer Name'
from CustomerOrder co
join Customer c
on c.CustomerID = co.CustomerID
group by c.firstName, c.lastName
order by 'Total Money Spent' desc

/* Total quanity of merchandise items purchased by description */
select m.type as 'Merch Type', m.description as 'Merch Description', count(co.merchID) as 'Total Quantity Purchased'
from CustomerOrder co
join Merchandise m
on m.MerchID = co.MerchID
group by m.Type, m.Description
order by 'Total Quantity Purchased' desc

/* Total amount of orders from Suppliers */
Select s.name as 'Supplier Name', count(so.supplierID) as 'Total Orders From Supplier'
from Supplier s 
join SupplierOrder so 
on s.SupplierID = so.SupplierID
group by s.Name
order by 'Total Orders From Supplier' desc


/* Supply orders in 2022 */
select s.name, so.OrderNo, so.Date
from Supplier s
join SupplierOrder so
on s.SupplierID = so.SupplierID
where date >= '2022-01-01'
order by so.date desc 

/* Amount of Merchdise sold in 2021 */
select m.type as 'Merch Type', m.description as 'Merch Description', co.Quantity, co.date as 'Date'
from CustomerOrder co
join Merchandise m
on m.MerchID = co.MerchID
where date between '2021-01-01' and '2021-12-31'
order by co.date asc







