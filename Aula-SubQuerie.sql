select
    state, -- Se eu quiser a média de todas as colunas eu tenho que tirar o meu state 
    avg("Somatorio") 
from 
    (select 
        state, 
        sum((income)/100) as "Somatorio"
    from 
        "Users"
    group by
        state) as x
        
group by 
    state
    
-- Exemplo da media total 
select
    avg("Somatorio") 
from 
    (select 
        state, 
        sum((income)/100) as "Somatorio"
    from 
        "Users"
    group by
        state) as x

-- Subquerie com with 

with x as (
    select 
        state, 
        sum((income)/100) as "Somatorio"
    from 
        "Users"
    group by
        state
)

select state, avg("Somatorio") from x group by state
