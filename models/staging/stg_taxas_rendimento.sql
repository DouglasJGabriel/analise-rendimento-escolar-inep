with source as (
    select * from {{ source('inep_raw', 'raw_taxas_rendimento') }}
),

filtered as (
    -- Remove as linhas textuais do topo do CSV, mantendo apenas onde o primeiro campo é um ano numérico (ex: 2025)
    select * 
    from source
    where regexp_contains(string_field_0, r'^[0-9]{4}$')
),

renamed as (
    select
        -- 1. Dimensões / Identificadores Gerais
        cast(string_field_0 as int64) as ano_censo,
        string_field_1 as unidade_geografica,
        string_field_2 as localizacao,
        string_field_3 as dependencia_administrativa,

        -- 2. Bloco: Taxa de Aprovação
        nullif(string_field_4, '--') as aprovacao_fund_total,
        nullif(string_field_5, '--') as aprovacao_fund_anos_iniciais,
        nullif(string_field_6, '--') as aprovacao_fund_anos_finais,
        nullif(string_field_7, '--') as aprovacao_fund_1_ano,
        nullif(string_field_8, '--') as aprovacao_fund_2_ano,
        nullif(string_field_9, '--') as aprovacao_fund_3_ano,
        nullif(string_field_10, '--') as aprovacao_fund_4_ano,
        nullif(string_field_11, '--') as aprovacao_fund_5_ano,
        nullif(string_field_12, '--') as aprovacao_fund_6_ano,
        nullif(string_field_13, '--') as aprovacao_fund_7_ano,
        nullif(string_field_14, '--') as aprovacao_fund_8_ano,
        nullif(string_field_15, '--') as aprovacao_fund_9_ano,
        nullif(string_field_16, '--') as aprovacao_med_total,
        nullif(string_field_17, '--') as aprovacao_med_1_serie,
        nullif(string_field_18, '--') as aprovacao_med_2_serie,
        nullif(string_field_19, '--') as aprovacao_med_3_serie,
        nullif(string_field_20, '--') as aprovacao_med_4_serie,
        nullif(string_field_21, '--') as aprovacao_med_nao_seriado,

        -- 3. Bloco: Taxa de Reprovação
        nullif(string_field_22, '--') as reprovacao_fund_total,
        nullif(string_field_23, '--') as reprovacao_fund_anos_iniciais,
        nullif(string_field_24, '--') as reprovacao_fund_anos_finais,
        nullif(string_field_25, '--') as reprovacao_fund_1_ano,
        nullif(string_field_26, '--') as reprovacao_fund_2_ano,
        nullif(string_field_27, '--') as reprovacao_fund_3_ano,
        nullif(string_field_28, '--') as reprovacao_fund_4_ano,
        nullif(string_field_29, '--') as reprovacao_fund_5_ano,
        nullif(string_field_30, '--') as reprovacao_fund_6_ano,
        nullif(string_field_31, '--') as reprovacao_fund_7_ano,
        nullif(string_field_32, '--') as reprovacao_fund_8_ano,
        nullif(string_field_33, '--') as reprovacao_fund_9_ano,
        nullif(string_field_34, '--') as reprovacao_med_total,
        nullif(string_field_35, '--') as reprovacao_med_1_serie,
        nullif(string_field_36, '--') as reprovacao_med_2_serie,
        nullif(string_field_37, '--') as reprovacao_med_3_serie,
        nullif(string_field_38, '--') as reprovacao_med_4_serie,
        nullif(string_field_39, '--') as reprovacao_med_nao_seriado,

        -- 4. Bloco: Taxa de Abandono
        nullif(string_field_40, '--') as abandono_fund_total,
        nullif(string_field_41, '--') as abandono_fund_anos_iniciais,
        nullif(string_field_42, '--') as abandono_fund_anos_finais,
        nullif(string_field_43, '--') as abandono_fund_1_ano,
        nullif(string_field_44, '--') as abandono_fund_2_ano,
        nullif(string_field_45, '--') as abandono_fund_3_ano,
        nullif(string_field_46, '--') as abandono_fund_4_ano,
        nullif(string_field_47, '--') as abandono_fund_5_ano,
        nullif(string_field_48, '--') as abandono_fund_6_ano,
        nullif(string_field_49, '--') as abandono_fund_7_ano,
        nullif(string_field_50, '--') as abandono_fund_8_ano,
        nullif(string_field_51, '--') as abandono_fund_9_ano,
        nullif(string_field_52, '--') as abandono_med_total,
        nullif(string_field_53, '--') as abandono_med_1_serie,
        nullif(string_field_54, '--') as abandono_med_2_serie,
        nullif(string_field_55, '--') as abandono_med_3_serie,
        nullif(string_field_56, '--') as abandono_med_4_serie,
        nullif(string_field_57, '--') as abandono_med_nao_seriado

    from filtered
)

select * from renamed