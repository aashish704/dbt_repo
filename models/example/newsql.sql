with source_data1 as (
    select * FROM {{source('sourcenamenew', 'dbt_table_one') }} as a inner JOIN {{source('sourcenamenew', 'dbt_table_two') }} as b on a.id = b.id
)


select * from source_data1