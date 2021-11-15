Create TABLE Deleted_entry (
    customer_id int,
	first_name varchar(255),
    last_name varchar(255),
    
    phone varchar(12)
);

CREATE TRIGGER Cust_delete_trig2
ON sales.customers
FOR DELETE
AS
BEGIN
INSERT INTO Deleted_entry(customer_id, First_name, last_name, phone)
select customer_id, first_name, last_name, phone from deleted
select * from Deleted_entry
END;

SELECT * FROM SALES.customers;
DELETE from sales.customers 
WHERE customer_id = 4;