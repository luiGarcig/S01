local M, N

repeat
  io.write("Digite o valor de M: ")
  M = tonumber(io.read())

  io.write("Digite o valor de N: ")
  N = tonumber(io.read())
until M <= N
  
io.write("Digite o valor de X: ")
local X = tonumber(io.read())

print("Multiplos de " .. X .. " entre " .. M .. " e " .. N .. ":")

-- Loop pelo intervalo
for i = M, N do
    if i % X == 0 then
        print(i)
    end
end

