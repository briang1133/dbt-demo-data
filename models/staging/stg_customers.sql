
with 

source as (

    select * from {{ source('ecommerce', 'src_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,

        ---------- properties
        name as customer_name

    from source

)

select * from renamed
