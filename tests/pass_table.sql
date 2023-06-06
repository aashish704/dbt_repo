{% test is_nepal(pass_nepal, address) %}

with validation as (

    select
        {{ address }} as country

    from {{ pass_table }}

),

validation_errors as (

    select
        country

    from validation
    -- if this is true, then even_field is actually odd!
    where country = 'nepal'

)

select *
from validation_errors

{% endtest %}