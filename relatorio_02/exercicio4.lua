function calculadora(a, b, operador)
    if operador == "+" then
        return a + b
    elseif operador == "-" then
        return a - b
    elseif operador == "*" then
        return a * b
    elseif operador == "/" then
        if b == 0 then
            return "não é possivel dividir por zero"
        else
            return a / b
        end
    else
        return "Operador inválido!"
    end
end

local a = tonumber(io.read())

local operador = io.read()

local b = tonumber(io.read())

local resultado = calculadora(a, b, operador)
print("Resultado: " .. tostring(resultado))

