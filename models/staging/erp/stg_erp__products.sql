<<<<<<< HEAD
with
    source_products as (
        select *
        from {{ source('erp', 'products') }}
    )

    , renamed as (
        select
            cast(id as int) as product_pk
            , cast(supplierid as int) as supplier_fk
            , cast(categoryid as int) as category_fk
            , cast(productname as string) as product_name
            , cast(quantityperunit as string) as quantity_per_unit
            , cast(unitprice as numeric(18,2)) as unit_price
            , cast(unitsinstock as int) as units_in_stock
            , cast(unitsonorder as int) as units_on_order
            , cast(reorderlevel as int) as reorder_level
            , discontinued as is_discontinued
        from source_products
    )

select *
=======
with
    source_products as (
        select *
        from {{ source('erp', 'products') }}
    )

    , renamed as (
        select
            cast(id as int) as product_pk
            , cast(supplierid as int) as supplier_fk
            , cast(categoryid as int) as category_fk
            , cast(productname as string) as product_name
            , cast(quantityperunit as string) as quantity_per_unit
            , cast(unitprice as numeric(18,2)) as unit_price
            , cast(unitsinstock as int) as units_in_stock
            , cast(unitsonorder as int) as units_on_order
            , cast(reorderlevel as int) as reorder_level
            , discontinued as is_discontinued
        from source_products
    )

select *
>>>>>>> aa3e1a8c3ae8e6c4477bc855fbb913a77257aea3
from renamed