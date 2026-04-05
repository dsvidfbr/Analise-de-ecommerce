SELECT
b.order_id,
a.customer_id,
d.product_id,
e.product_category_name,
d.price,
b.order_status,
d.seller_id,
f.seller_city,
f.seller_state,
a.customer_city,
a.customer_state,
c.payment_type,
c.payment_value,
b.order_purchase_timestamp
FROM 
olist_customers_dataset as a
LEFT JOIN olist_orders_dataset as b
ON a.customer_id = b.customer_id
LEFT JOIN olist_order_payments_dataset as c
ON b.order_id = c.order_id
LEFT JOIN olist_order_items_dataset as d
ON c.order_id = d.order_id
LEFT JOIN olist_products_dataset as e
ON d.product_id = e.product_id
LEFT JOIN olist_sellers_dataset as f
ON d.seller_id = f.seller_id
