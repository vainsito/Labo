

-- Parcial 2022 - B

-- Ejercicio 1

--Nachito

--a) 

data PaloA = EspadaA | BastoA | OroA | CopaA deriving (Show)

mismo_paloA :: PaloA -> PaloA -> Bool
mismo_paloA OroA OroA = True
mismo_paloA CopaA CopaA = True
mismo_paloA BastoA BastoA = True
mismo_paloA _ _ = False

--b)

data FiguraA = UnoA | DosA | TresA | CuatroA | CincoA | SeisA | SieteA | SotaA | CaballoA | ReyA deriving (Show)

valor_figuraA :: FiguraA -> Int
valor_figuraA UnoA = 1
valor_figuraA DosA = 2
valor_figuraA TresA = 3
valor_figuraA CuatroA = 4
valor_figuraA CincoA = 5
valor_figuraA SeisA = 6
valor_figuraA SieteA = 7
valor_figuraA SotaA = 8
valor_figuraA CaballoA = 9
valor_figuraA ReyA = 10

data CartaA = NaipeA FiguraA PaloA deriving (Show)

suma_cartasA :: CartaA -> CartaA -> Maybe Int
suma_cartasA (NaipeA a b) (NaipeA c d)
    | mismo_paloA b d = Just (valor_figuraA a + valor_figuraA c)
    | otherwise = Nothing

-- Ejercicio 2


compatiblesA :: CartaA -> [CartaA] -> [FiguraA]
compatiblesA _ [] = []
compatiblesA (NaipeA a b) ((NaipeA c d): cs)
    | mismo_paloA b d && (valor_figuraA a + valor_figuraA c < 15) = c: compatiblesA (NaipeA a b) cs
    | otherwise = compatiblesA (NaipeA a b) cs

-- compatiblesA (NaipeA SeisA OroA) [NaipeA SieteA OroA, NaipeA TresA BastoA, NaipeA SotaA OroA]

-- Ejercicio 3

type DuracionA = Int 
type NombreA = String

data CancionA = TemaA NombreA DuracionA deriving (Eq, Show)
data EstadoA = EscuchadoA | NoEscuchadoA deriving (Eq, Show)
data PlaylistA = EnListaA CancionA EstadoA PlaylistA | VaciaA deriving (Eq, Show)

tiempo_reproduccionA :: PlaylistA -> Int
tiempo_reproduccionA VaciaA = 0
tiempo_reproduccionA (EnListaA (TemaA a b) c play) 
    |c == EscuchadoA = b + tiempo_reproduccionA play
    |c == NoEscuchadoA = tiempo_reproduccionA play

--tiempo_reproduccionA (EnListaA (TemaA "YoSoyCholo" 25) EscuchadoA (EnListaA (TemaA "ChinoCochino" 2) NoEscuchadoA (EnListaA (TemaA "ElChico10" 5) EscuchadoA VaciaA)))

--tiempo_reproduccionA (EnListaA (TemaA "MamaDeManu" 3) EscuchadoA (EnListaA (TemaA "AbuelaDeManu" 5) EscuchadoA (EnListaA (TemaA "HermanoDeManu" 6) NoEscuchadoA VaciaA)))