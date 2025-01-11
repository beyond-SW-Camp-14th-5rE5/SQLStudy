SELECT 
       a.TITLE
     , a.BOARD_ID
     , b.REPLY_ID
     , b.WRITER_ID
     , b.CONTENTS
     , DATE_FORMAT(b.CREATED_DATE,'%Y-%m-%d') as CREATED_DATE
  from USED_GOODS_BOARD a
  join USED_GOODS_REPLY b on a.BOARD_ID = b.BOARD_ID
 where a.CREATED_DATE LIKE '2022-10-%'
 order by b.CREATED_DATE, a.TITLE;