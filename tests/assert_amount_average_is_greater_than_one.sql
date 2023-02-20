select customer_id,
avg(total_amount_paid) as average_amount
from {{ ref("fact_customer_orders") }}
group by customer_id
having count(customer_id) > 1 and average_amount < 1