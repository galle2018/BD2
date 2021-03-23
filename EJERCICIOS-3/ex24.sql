# 24. Retorne do staff o id, nome, sobrenome além do total de cobranças (payment) feitas por cada
# integrante.

use sakila;
select staff.staff_id, staff.first_name, staff.email , sum(payment.amount) AS Total
FROM payment
inner join staff ON staff.staff_id = payment.staff_id
GROUP BY  staff.staff_id, staff.first_name, staff.email;

