with staging as (
    select * from {{ ref('stg_taxas_rendimento') }}
),

unpivoted as (
    
    -- Ensino fundamental - anos iniciais e finais

    -- Aprovação
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino, cast(replace(aprovacao_fund_total, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_total is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 1º Ano' as etapa_ensino, cast(replace(aprovacao_fund_1_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_1_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 2º Ano' as etapa_ensino, cast(replace(aprovacao_fund_2_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_2_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 3º Ano' as etapa_ensino, cast(replace(aprovacao_fund_3_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_3_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 4º Ano' as etapa_ensino, cast(replace(aprovacao_fund_4_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_4_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 5º Ano' as etapa_ensino, cast(replace(aprovacao_fund_5_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_5_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 6º Ano' as etapa_ensino, cast(replace(aprovacao_fund_6_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_6_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 7º Ano' as etapa_ensino, cast(replace(aprovacao_fund_7_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_7_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 8º Ano' as etapa_ensino, cast(replace(aprovacao_fund_8_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_8_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Fundamental - 9º Ano' as etapa_ensino, cast(replace(aprovacao_fund_9_ano, ',', '.') as numeric) as valor_taxa from staging where aprovacao_fund_9_ano is not null

    -- Reprovação (Fundamental)
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino, cast(replace(reprovacao_fund_total, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_total is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 1º Ano' as etapa_ensino, cast(replace(reprovacao_fund_1_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_1_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 2º Ano' as etapa_ensino, cast(replace(reprovacao_fund_2_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_2_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 3º Ano' as etapa_ensino, cast(replace(reprovacao_fund_3_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_3_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 4º Ano' as etapa_ensino, cast(replace(reprovacao_fund_4_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_4_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 5º Ano' as etapa_ensino, cast(replace(reprovacao_fund_5_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_5_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 6º Ano' as etapa_ensino, cast(replace(reprovacao_fund_6_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_6_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 7º Ano' as etapa_ensino, cast(replace(reprovacao_fund_7_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_7_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 8º Ano' as etapa_ensino, cast(replace(reprovacao_fund_8_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_8_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Fundamental - 9º Ano' as etapa_ensino, cast(replace(reprovacao_fund_9_ano, ',', '.') as numeric) as valor_taxa from staging where reprovacao_fund_9_ano is not null

    -- Abandono (Fundamental)
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino, cast(replace(abandono_fund_total, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_total is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 1º Ano' as etapa_ensino, cast(replace(abandono_fund_1_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_1_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 2º Ano' as etapa_ensino, cast(replace(abandono_fund_2_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_2_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 3º Ano' as etapa_ensino, cast(replace(abandono_fund_3_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_3_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 4º Ano' as etapa_ensino, cast(replace(abandono_fund_4_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_4_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 5º Ano' as etapa_ensino, cast(replace(abandono_fund_5_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_5_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 6º Ano' as etapa_ensino, cast(replace(abandono_fund_6_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_6_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 7º Ano' as etapa_ensino, cast(replace(abandono_fund_7_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_7_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 8º Ano' as etapa_ensino, cast(replace(abandono_fund_8_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_8_ano is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - 9º Ano' as etapa_ensino, cast(replace(abandono_fund_9_ano, ',', '.') as numeric) as valor_taxa from staging where abandono_fund_9_ano is not null


    --Ensino médio - séries
    
    -- Aprovação (médio)
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Médio - Total' as etapa_ensino, cast(replace(aprovacao_med_total, ',', '.') as numeric) as valor_taxa from staging where aprovacao_med_total is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Médio - 1ª Série' as etapa_ensino, cast(replace(aprovacao_med_1_serie, ',', '.') as numeric) as valor_taxa from staging where aprovacao_med_1_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Médio - 2ª Série' as etapa_ensino, cast(replace(aprovacao_med_2_serie, ',', '.') as numeric) as valor_taxa from staging where aprovacao_med_2_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Médio - 3ª Série' as etapa_ensino, cast(replace(aprovacao_med_3_serie, ',', '.') as numeric) as valor_taxa from staging where aprovacao_med_3_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Aprovação' as tipo_taxa, 'Ensino Médio - 4ª Série' as etapa_ensino, cast(replace(aprovacao_med_4_serie, ',', '.') as numeric) as valor_taxa from staging where aprovacao_med_4_serie is not null

    -- Reprovação (Médio)
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Médio - Total' as etapa_ensino, cast(replace(reprovacao_med_total, ',', '.') as numeric) as valor_taxa from staging where reprovacao_med_total is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Médio - 1ª Série' as etapa_ensino, cast(replace(reprovacao_med_1_serie, ',', '.') as numeric) as valor_taxa from staging where reprovacao_med_1_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Médio - 2ª Série' as etapa_ensino, cast(replace(reprovacao_med_2_serie, ',', '.') as numeric) as valor_taxa from staging where reprovacao_med_2_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Médio - 3ª Série' as etapa_ensino, cast(replace(reprovacao_med_3_serie, ',', '.') as numeric) as valor_taxa from staging where reprovacao_med_3_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Reprovação' as tipo_taxa, 'Ensino Médio - 4ª Série' as etapa_ensino, cast(replace(reprovacao_med_4_serie, ',', '.') as numeric) as valor_taxa from staging where reprovacao_med_4_serie is not null

    -- Abandono (Médio)
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Fundamental - Total' as etapa_ensino, cast(replace(abandono_med_total, ',', '.') as numeric) as valor_taxa from staging where abandono_med_total is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Médio - 1ª Série' as etapa_ensino, cast(replace(abandono_med_1_serie, ',', '.') as numeric) as valor_taxa from staging where abandono_med_1_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Médio - 2ª Série' as etapa_ensino, cast(replace(abandono_med_2_serie, ',', '.') as numeric) as valor_taxa from staging where abandono_med_2_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Médio - 3ª Série' as etapa_ensino, cast(replace(abandono_med_3_serie, ',', '.') as numeric) as valor_taxa from staging where abandono_med_3_serie is not null
    union all
    select ano_censo, unidade_geografica, localizacao, dependencia_administrativa, 'Abandono' as tipo_taxa, 'Ensino Médio - 4ª Série' as etapa_ensino, cast(replace(abandono_med_4_serie, ',', '.') as numeric) as valor_taxa from staging where abandono_med_4_serie is not null

)

select * from unpivoted