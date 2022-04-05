SELECT 
    count(full_name) Quantidade,
    initcap(name) as Profissão,
    state
FROM
    "Users" usuario
JOIN 
    "Occupations" cbo_tab ON cbo_tab.cod_cbo = 4559
GROUP by 
    name, state
ORDER by
    Quantidade desc
