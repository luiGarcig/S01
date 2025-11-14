
data Banda = Banda{nome :: String, genero :: String, cache :: Double}
  deriving (Show)

data StatusEvento = Ativo | Encerrado | Cancelado
  deriving (Show, Eq)

data Evento = Evento{bandas :: [Banda], status :: StatusEvento}
  deriving (Show)

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bs st)
  | st == Cancelado = 0.0
  | otherwise       = total * 1.20
  where
    total = sum (map cache bs)

bandaAbertura :: Evento -> String
bandaAbertura (Evento []     _) = "Nenhuma banda para abrir o evento."
bandaAbertura (Evento (b:_) _)  = "Banda de abertura: " ++ nome b

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda para encerrar o evento."
bandaEncerramento (Evento bs _) =
  "Banda de encerramento: " ++ nome (last bs)

mostrarBandas :: [Banda] -> IO ()
mostrarBandas [] = return()
mostrarBandas (b:bs) = do
  putStrLn $ "- " ++ nome b
            ++ " (" ++ genero b ++ ") — cachê: "
            ++ show (cache b)
  mostrarBandas bs

main :: IO ()
main = do
  let banda1 = Banda "Os Rockeiros" "Rock" 5000.0
  let banda2 = Banda "Samba da Noite" "Samba" 3500.0
  let banda3 = Banda "Jazz da Madruga" "Jazz" 4000.0
  let banda4 = Banda "Pop Hits" "Pop" 3000.0

  let eventoAtivo = Evento [banda1, banda4] Ativo
  let eventoEncerrado = Evento [banda2, banda3, banda1] Encerrado
  let eventoCancelado = Evento [banda3, banda2] Cancelado

  putStrLn "Evento 1 (Ativo)"
  mostrarBandas (bandas eventoAtivo)
  putStrLn $ bandaAbertura eventoAtivo
  putStrLn $ bandaEncerramento eventoAtivo
  putStrLn $ "Custo total: " ++ show (custoTotalEvento eventoAtivo)
  putStrLn ""

  putStrLn "Evento 2 (Encerrado)"
  mostrarBandas (bandas eventoEncerrado)
  putStrLn $ bandaAbertura eventoEncerrado
  putStrLn $ bandaEncerramento eventoEncerrado
  putStrLn $ "Custo total: " ++ show (custoTotalEvento eventoEncerrado)
  putStrLn ""

  putStrLn "Evento 3 (Cancelado)"
  mostrarBandas (bandas eventoCancelado)
  putStrLn $ bandaAbertura eventoCancelado
  putStrLn $ bandaEncerramento eventoCancelado
  putStrLn $ "Custo total: " ++ show (custoTotalEvento eventoCancelado)

