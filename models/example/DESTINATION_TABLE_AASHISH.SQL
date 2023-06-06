{{ config(
  materialized='incremental',
  schema='ASSESSMENT',
  incremental_strategy='delete+insert',
  unique_key='id',
  partition_by='id'
) }}




select * from ASSESSMENT.SOURCE_TABLE_AASHISH where ORDER_DATE >= (select max(ORDER_DATE) from {{ this }})