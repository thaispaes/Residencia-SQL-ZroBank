SELECT 
    substring(email, position('@' in email), 20) Dominio, -- A função Substring vai mostrar o que tiver na Sring de acordo com a posição passada por parametro 
    count(*) as qtd
FROM 
    "Users"

GROUP by 
   Dominio -- A função position usanda é para especificar que a substring deve agir apartir do '@' e ir até o fim da String 
order by 
    qtd desc
