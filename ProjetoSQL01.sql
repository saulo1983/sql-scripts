SELECT 
    product_category_name AS categoria_produto,
    COUNT(*) AS total_pedidos
FROM 
    products
LEFT JOIN 
    order_items ON products.product_id = order_items.product_id
GROUP BY 
    product_category_name
ORDER BY 
    total_pedidos DESC;
   
SELECT * FROM order_items oi 
