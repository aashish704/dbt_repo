--select * from ASSESSMENT.TITANIC_DBT

--select count(*) from ASSESSMENT.TITANIC_DBT;
/*
--1. A.How many people survive and how many people dead

select 
CASE WHEN survived=0 THEN 'dead'
     WHEN survived=1 THEN 'alive'
END as survival_status,
count(*) from ASSESSMENT.TITANIC_DBT
group by survived

--2.How many people survive how does not have sibling
select count(*) as survival_status
from ASSESSMENT.TITANIC_DBT
where sibsp=0 and survived=1


--3C.How many people died Who have sibling

select count(*) as total_count
from ASSESSMENT.TITANIC_DBT
where survived=0 and sibsp=0

--4D.Remove the NAN data from cabin and display updated list
select * from ASSESSMENT.TITANIC_DBT where cabin is not null
*/

--5. How many male who died and how many female died?
select sex,count(*) as death_count from ASSESSMENT.TITANIC_DBT 
where survived=0 
group by sex
