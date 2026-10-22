# Dicionário de colunas da origem (INEP: taxas de rendimento)

| Coluna original (Hierarquia no Excel) | O que significa | Tipo | Exemplo de valor | Problema encontrado | Nome no staging |

|---|---|---|---|---|---|

| Ano | Ano letivo de referência dos dados | Inteiro | 2025 | Nenhum | ano |

| Unidade Geográfica | Nome do Brasil, Região ou Estado (UF) | Texto | Brasil / Norte | Níveis geográficos misturados na mesma coluna | unidade_geografica |

| Localização | Zona da escola (Total, Urbana, Rural) | Texto | Urbana | Nenhum | localizacao |

| Dependência Administrativa | Rede de ensino (Total, Federal, Estadual, Municipal, Privada, Pública) | Texto | Estadual | Nenhum | rede_ensino |

| Taxa de Aprovação -> Ensino Fundamental -> Total | Taxa total de aprovação no Ensino Fundamental | Decimal | 97,4 | Cabeçalho multinível; vírgula decimal | taxa_aprovacao_fundamental_total |

| Taxa de Aprovação -> Ensino Fundamental -> 1º Ano | Taxa de aprovação no 1º ano do Ensino Fundamental | Decimal | 99,2 | Cabeçalho multinível; vírgula decimal; valores `--` | taxa_aprovacao_fundamental_1ano |

| Taxa de Aprovação -> Ensino Médio -> Total | Taxa total de aprovação no Ensino Médio | Decimal | 94,8 | Cabeçalho multinível; vírgula decimal | taxa_aprovacao_medio_total |

| Taxa de Reprovação -> Ensino Fundamental -> Total | Taxa total de reprovação no Ensino Fundamental | Decimal | 2,1 | Nome "Total" repetido; vírgula decimal | taxa_reprovacao_fundamental_total |

| Taxa de Reprovação -> Ensino Médio -> Total | Taxa total de reprovação no Ensino Médio | Decimal | 3,0 | Nome "Total" repetido; vírgula decimal | taxa_reprovacao_medio_total |

| Taxa de Abandono -> Ensino Fundamental -> Total | Taxa total de abandono no Ensino Fundamental | Decimal | 0,5 | Nome "Total" repetido; vírgula decimal | taxa_abandono_fundamental_total |

| Taxa de Abandono -> Ensino Médio -> Total | Taxa total de abandono no Ensino Médio | Decimal | 2,2 | Nome "Total" repetido; vírgula decimal | taxa_abandono_medio_total |