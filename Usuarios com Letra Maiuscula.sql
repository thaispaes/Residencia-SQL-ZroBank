SELECT 
    full_name
FROM 
    "Users"
WHERE
    full_name = UPPER(full_name) -- O Where vai validar se a string da coluna full_name tem strings com as letras maiusculas
    
