select 
    initcap(full_name) as "Nome Completo", -- A função coloca todas as primeiras palavras da String como maiuscula 
    date_part('year', age(birth)) || ' Anos' as "Idade", -- Date_part pega uma parte da data atual e o age calcula a idade de acordo com as datas
    city || '/' || state as "Cidade/Estado"
from
    "Users"
