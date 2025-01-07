select a.flavor
from first_half a
join icecream_info b using (flavor)
where a.total_order > 3000
and b.ingredient_type like 'fruit%'
order by total_order desc