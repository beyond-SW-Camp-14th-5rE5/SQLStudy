SELECT
       DR_NAME
     , DR_ID
     , MCDP_CD
     , DATE_FORMAT(HIRE_YMD,'%Y-%m-%d')
  from DOCTOR
 where MCDP_CD IN ('CS','GS')
 order by HIRE_YMD DESC, DR_NAME;