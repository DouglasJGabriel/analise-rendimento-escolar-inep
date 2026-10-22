with staging as (
    select * from {{ ref('stg_taxas_rendimento') }}
),

-- Unificando os blocos de dados usando UNION ALL para transformar colunas em linhas (Unpivot)
unpivoted as (
    
    -- ==========================================
    -- 1. TAXAS DE APROVAÇÃO
    -- ==========================================
    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Aprovação' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino,
        cast(replace(aprovacao_fund_total, ',', '.') as numeric) as valor_taxa
    from staging where aprovacao_fund_total is not null

    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Aprovação' as tipo_taxa, 'Ensino Fundamental - 1º Ano' as etapa_ensino,
        cast(replace(aprovacao_fund_1_ano, ',', '.') as numeric) as valor_taxa
    from staging where aprovacao_fund_1_ano is not null

    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Aprovação' as tipo_taxa, 'Ensino Médio - Total' as etapa_ensino,
        cast(replace(aprovacao_med_total, ',', '.') as numeric) as valor_taxa
    from staging where aprovacao_med_total is not null

    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Aprovação' as tipo_taxa, 'Ensino Médio - 1ª Série' as etapa_ensino,
        cast(replace(aprovacao_med_1_serie, ',', '.') as numeric) as valor_taxa
    from staging where aprovacao_med_1_serie is not null

    -- ==========================================
    -- 2. TAXAS DE REPROVAÇÃO
    -- ==========================================
    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Reprovação' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino,
        cast(replace(reprovacao_fund_total, ',', '.') as numeric) as valor_taxa
    from staging where reprovacao_fund_total is not null

    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Reprovação' as tipo_taxa, 'Ensino Médio - Total' as etapa_ensino,
        cast(replace(reprovacao_med_total, ',', '.') as numeric) as valor_taxa
    from staging where reprovacao_med_total is not null

    -- ==========================================
    -- 3. TAXAS DE ABANDONO
    -- ==========================================
    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Abandono' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino,
        cast(replace(abandono_fund_total, ',', '.') as numeric) as valor_taxa
    from staging where abandono_fund_total is not null

    union all

    select
        ano_censo, unidade_geografica, localizacao, dependencia_administrativa,
        'Abandono' as tipo_taxa, 'Ensino Médio - Total' as etapa_ensino,
        cast(replace(abandono_med_total, ',', '.') as numeric) as valor_taxa
    from staging where abandono_med_total is not null
)

select * from unpivoted