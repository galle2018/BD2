# 25. Retorne do staff o id, nome e sobrenome além do total de cobranças (payment) feitas por cada
# integrante. Limite a data (payment_date) dos pagamentos entre '2005-05-25' e '2005-08-23'.

use sakila;
select staff.staff_id, staff.first_name, staff.last_name , sum(payment.amount) AS Total
FROM payment
inner join staff ON staff.staff_id = payment.staff_id
WHERE payment_date between '2005-05-25' and '2005-08-23'
GROUP BY  staff.staff_id, staff.first_name, staff.last_name;

