data Bebida = Bebida{ nome  :: String, tipo  :: String, preco :: Double} 
	deriving (Show)

data Status = Aberto | Entregue | Cancelado
  deriving (Show, Eq)

data Pedido = Pedido{ bebidas :: [Bebida], status  :: Status}
	deriving (Show)

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bs st)
  | st == Cancelado = 0
  | otherwise = sum (map preco bs) + 5.0

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido."
primeiraBebida (Pedido (b:_) _) = nome b

main :: IO ()
main = do
    let cafe = Bebida "Café preto" "Café" 5.0
    let cha = Bebida "Chá Verde" "Chá" 7.0
    let suco = Bebida "Suco de Laranja" "Suco" 9.0

    let pedido1 = Pedido [cafe, cha] Aberto
    let pedido2 = Pedido [] Aberto
    let pedido3 = Pedido [suco] Cancelado

    putStrLn $ "Total pedido1: R$" ++ show (valorTotalPedido pedido1)
    putStrLn $ "Primeira bebida pedido1: " ++ primeiraBebida pedido1

    putStrLn $ "Primeira bebida pedido2: " ++ primeiraBebida pedido2
    putStrLn $ "Total pedido3 (cancelado): R$" ++ show (valorTotalPedido pedido3)
