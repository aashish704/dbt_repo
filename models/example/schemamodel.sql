{{ config(materialized='table', schema='stagging') }}

select *
from {{ ref('PASS_TABLE') }}
where age = 25