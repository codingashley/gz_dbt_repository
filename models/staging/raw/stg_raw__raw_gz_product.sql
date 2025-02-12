with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
    Cast(purchse_price AS Float64) AS purchase_price

    from source

)

select * from renamed
