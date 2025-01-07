SELECT
       a.FLAVOR
  from FIRST_HALF a
  join (select *
          from ICECREAM_INFO 
         where INGREDIENT_TYPE LIKE 'fruit%') b on a.FLAVOR = b.FLAVOR
 where a.TOTAL_ORDER > 3000
 ORDER BY a.TOTAL_ORDER DESC;