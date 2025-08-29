function filtrarPares(tabela)
    local pares = {} 
    for i = 1, #tabela do
        if tabela[i] % 2 == 0 then
            table.insert(pares, tabela[i])
      
        end
    end
    return pares
end

local numeros = {10, 15, 22, 33, 44, 57, 60}
local apenasPares = filtrarPares(numeros)

for i = 1, #apenasPares do
    print(apenasPares[i])
end

