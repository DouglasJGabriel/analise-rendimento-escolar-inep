with source as (
    select * from {{ source('inep_raw', 'raw_taxas_rendimento') }}
),

renamed as (
    select
        -- Aqui vamos renomear e tratar as colunas principais do INEP na próxima etapa
        *
    from source
)

select * from renamed