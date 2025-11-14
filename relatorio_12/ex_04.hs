
data Servico = Servico{nome :: String, tipo :: String, precoBase :: Double} 
  deriving (Show)

data StatusAtendimento = Andamento | Finalizado | Cancelado
  deriving (Show, Eq)

data Atendimento = Atendimento{servicos :: [Servico], statusAtendimento :: StatusAtendimento} 
  deriving (Show)


bonusEspiritual :: [Servico] -> Double
bonusEspiritual ss =
  let totalBase = sum (map precoBase ss)
      comBonus
        | length ss > 3 = totalBase * 1.25
        | otherwise = totalBase
      comDesconto
        | comBonus > 500 = comBonus * 0.90
        | otherwise = comBonus
  in comDesconto


valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento ss st)
  | st == Cancelado = 0.0
  | otherwise = bonusEspiritual ss


descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento [] _) =
  "Nenhum serviço registrado neste atendimento."
descricaoPrimeiroServico (Atendimento (s:_) _) =
  "Primeiro serviço: " ++ nome s ++ " (" ++ tipo s ++ ")"

mostrarServicos :: [Servico] -> IO ()
mostrarServicos [] = return()
mostrarServicos (s:ss) = do
  putStrLn $ "  - " ++ nome s
          ++ " [" ++ tipo s ++ "]"
          ++ " — preço base: " ++ show (precoBase s)
  mostrarServicos ss

main :: IO ()
main = do
  let banhoSimples = Servico "Banho Simples" "Banho" 120.0
  let banhoHerbal = Servico "Banho Herbal" "Banho" 220.0
  let massagemOni = Servico "Massagem Oni Relaxante" "Massagem" 180.0
  let banqueteEsp = Servico "Banquete Espiritual" "Banquete" 300.0
  let limpezaKami = Servico "Limpeza para Espíritos Kami" "Banho" 250.0

  let atendimento1 = Atendimento{servicos = [banhoSimples, massagemOni], statusAtendimento = Andamento}
  let atendimento2 = Atendimento{servicos = [banhoHerbal, massagemOni, banqueteEsp, limpezaKami], statusAtendimento = Finalizado}
  let atendimento3 = Atendimento{servicos = [banqueteEsp, banhoHerbal], statusAtendimento = Cancelado}

  putStrLn "Atendimento 1:"
  putStrLn $ "Status: " ++ show (statusAtendimento atendimento1)
  mostrarServicos (servicos atendimento1)
  putStrLn $ descricaoPrimeiroServico atendimento1
  putStrLn $ "Valor final: " ++ show (valorFinalAtendimento atendimento1)
  putStrLn ""

  putStrLn "Atendimento 2:"
  putStrLn $ "Status: " ++ show (statusAtendimento atendimento2)
  mostrarServicos (servicos atendimento2)
  putStrLn $ descricaoPrimeiroServico atendimento2
  putStrLn $ "Valor final: " ++ show (valorFinalAtendimento atendimento2)
  putStrLn ""

  putStrLn "Atendimento 3:"
  putStrLn $ "Status: " ++ show (statusAtendimento atendimento3)
  mostrarServicos (servicos atendimento3)
  putStrLn $ descricaoPrimeiroServico atendimento3
  putStrLn $ "Valor final: " ++ show (valorFinalAtendimento atendimento3)
