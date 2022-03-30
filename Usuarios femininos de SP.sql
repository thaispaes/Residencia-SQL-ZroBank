SELECT 
    count(gender) as quantidade,
    state,
    city
FROM 
    "Users"
WHERE 
    state= 'SP' 
    
GROUP by 
    state, gender, city 
HAVING 
    gender = 'F'
ORDER by 
    quantidade DESC -- Para melhorar a visualização da tabela
