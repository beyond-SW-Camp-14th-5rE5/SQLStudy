SELECT
       DATE_FORMAT(c.SALES_DATE,'%Y-%m-%d') as SALES_DATE
     , c.PRODUCT_ID
     , c.USER_ID
     , c.SALES_AMOUNT
  from (SELECT 
               a.PRODUCT_ID
             , a.USER_ID
             , a.SALES_AMOUNT
             , a.SALES_DATE
          from ONLINE_SALE a
        
        UNION
        
        SELECT 
               b.PRODUCT_ID
             , NULL as USER_ID
             , b.SALES_AMOUNT
             , b.SALES_DATE
          from OFFLINE_SALE b
         
       ) as c
 where c.SALES_DATE like '2022-03-%'
 order by c.SALES_DATE, c.PRODUCT_ID, c.USER_ID