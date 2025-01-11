SELECT
       PT_NAME
     , PT_NO
     , GEND_CD
     , AGE
     , COALESCE(TLNO,'NONE')
  from PATIENT
 where age <= 12
   and GEND_CD = 'W'
 order by AGE desc, PT_NAME;