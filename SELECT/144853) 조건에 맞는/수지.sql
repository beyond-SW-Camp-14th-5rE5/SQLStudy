SELECT book_id, date_format(published_date, '%Y-%m-%d')
from book
where date_format(published_date, '%Y') = 2021
and category = '인문'
order by published_date