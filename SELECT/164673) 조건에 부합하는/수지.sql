SELECT a.title, a.board_id, b.reply_id, b.writer_id, b.contents, date_format(b.created_date, '%Y-%m-%d')
from used_goods_board a
join used_goods_reply b using (board_id)
where a.created_date between '2022-10-01' and '2022-10-31'
order by b.created_date, a.title