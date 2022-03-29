SELECT 
    count(*) as qtd,
    state,
    city
FROM 
    "Users"
WHERE 
    state in ('SP', 'MG', 'ES', 'RJ')
    and city not in ('Belo Horizonte', 'Rio de Janeiro', 'São Paulo', 'Vitória')
GROUP by 
    state, city
ORDER by 
    left(state,1), qtd desc

