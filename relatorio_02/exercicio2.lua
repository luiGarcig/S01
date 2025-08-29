function maiorValor(tabela)
  local maior = tabela[1]
  for i = 2, #tabela do
    if tabela[i] > maior then
      maior = tabela[i]
    end
  end
  return maior
end

local numeros = { 10, 25, 3, 447, 18, 99, 42333 }

print("maior valor: " .. maiorValor(numeros))
