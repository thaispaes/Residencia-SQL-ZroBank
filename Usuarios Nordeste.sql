SELECT 
    count(*) as qtd,
    state,
    city
FROM 
    "Users"
WHERE 
    state in ('AL', 'BA', 'CE', 'MA', 'PB', 'PE', 'PI', 'RN', 'SE')
    and city not in ('Maceió', 'Salvador', 'Fortaleza', 'São Luiz', 'João Pessoa', 'Recife', 'Teresina', 'Natal', 'Aracaju')
GROUP by 
    state, city
ORDER by 
    left(state, 2), qtd desc --Ordenando os estados atraves do left para o order by agir tanto de forma decrecente na quantidade como de forma crescente no Estado 


