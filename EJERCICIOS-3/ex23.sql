# 23. Retorne o id, nome e sobrenome do cliente (customer), em conjunto com o total de
# pagamentos realizados (payment.amout). Ordene o resultado pelo valor dos pagamentos.
# Limite o resultado apenas aos clientes que tenham um montante maior que 100.

use sakila;
SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) AS Total FROM
customer 
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
HAVING Total > 100 
ORDER BY 4; 
