CREATE FUNCTION orders_in_range (
    @start_year datetime,
    @end_year datetime	
)
RETURNS TABLE
AS
RETURN
    SELECT 
        order_id,
       customer_id,
        order_status,
		store_id
		
    FROM
        sales.orders
    WHERE
        year(order_date) BETWEEN @start_year AND @end_year

SELECT 
    order_id,
       customer_id,
        order_status,
		store_id
FROM 
    orders_in_range(2016,2017)