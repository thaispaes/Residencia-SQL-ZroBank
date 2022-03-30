SELECT 
    initcap(full_name) as "nome_completo",
    cpf,
    email
FROM 
    "Users"
where   
    full_name ILIKE 'ricardo azevedo%' -- O Ilike vai ser usado para que pesquise independente do case sensitive 
