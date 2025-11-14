
data Item = Item{ nome :: String, categoria :: String, preco :: Double}
	deriving (Show)

data CompraZelda = CompraZelda{itens :: [Item]} 
  deriving (Show)

calculaDesconto :: [Item] -> Double
calculaDesconto xs =
    let total = sum (map preco xs)
    in if total > 200
       then total * 0.10
       else 0.0

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda xs)
  | total > 200 = total - desconto
  | otherwise = total + 15.0
  where
    total = sum (map preco xs)
    desconto = calculaDesconto xs


mostrarItens :: [Item] -> IO ()
mostrarItens [] = return ()
mostrarItens (i:is) = do
    putStrLn $ "- " ++ nome i ++ " (" ++ categoria i ++ ") — " ++ show (preco i)
    mostrarItens is

main :: IO ()
main = do
    let espada   = Item "Espada de Aço" "Arma" 150.0
    let escudo   = Item "Escudo de Madeira" "Equipamento" 60.0
    let pocao    = Item "Poção de Vida" "Poção" 25.0
    let arco     = Item "Arco Hyliano" "Arma" 180.0

    let compra1 = CompraZelda [espada, pocao]       
    let compra2 = CompraZelda [arco, escudo]        
    let compra3 = CompraZelda []                  

    putStrLn "Compra 1:"
    mostrarItens (itens compra1)
    putStrLn $ "Valor final: " ++ show (valorFinal compra1)
    putStrLn ""

    putStrLn "Compra 2:"
    mostrarItens (itens compra2)
    putStrLn $ "Valor final: " ++ show (valorFinal compra2)
    putStrLn ""

    putStrLn "Compra 3:"
    mostrarItens (itens compra3)
    putStrLn $ "Valor final: " ++ show (valorFinal compra3)
