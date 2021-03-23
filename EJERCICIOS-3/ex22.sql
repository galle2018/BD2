# 22. Retorne o id, nome e sobrenome do cliente (customer), em conjunto com a soma do total de
# pagamentos realizados (payment.amout). Ordene o resultado pelo nome e sobrenome.

use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS Total FROM
customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
ORDER BY 2, 3; 
