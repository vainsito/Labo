-- Parcial 2022 - A

--a)
data FormaA = Piedra1 | Papel1 | Tijera1 deriving (Show)

le_ganaNachito :: FormaA -> FormaA -> Bool
le_ganaNachito Piedra1 Tijera1 = True
le_ganaNachito Papel1 Piedra1 = True
le_ganaNachito Tijera1 Papel1 = True
le_ganaNachito _ _ = False

--b)

type NombreA = String

data JugadorA = ManoA NombreA FormaA

ganadorA :: JugadorA -> JugadorA -> Maybe NombreA
ganadorA (ManoA a b) (ManoA c d)
    | le_ganaNachito b d == True = Just (a)
    | le_ganaNachito d b == True = Just (c)
    | otherwise = Nothing

-- Ejercicio 2

--Nachito

igualesA :: FormaA -> FormaA -> Bool
igualesA Piedra1 Piedra1 = True
igualesA Papel1 Papel1 = True
igualesA Tijera1 Tijera1 = True
igualesA _ _ = False 

quien_jugoA :: FormaA -> [JugadorA] -> [NombreA]
quien_jugoA f [] = []
quien_jugoA f ((ManoA a b):xs)
    | igualesA f b = a: quien_jugoA f xs
    | otherwise = quien_jugoA f xs 

--quien_jugoA Piedra1 [(ManoA "nacho" Piedra1),(ManoA "tabo" Tijera1),(ManoA "alex" Piedra1),(ManoA "surpa" Papel1),(ManoA "luca" Piedra1)]

-- Ejercicio 3

--Nachito

data NotaMusicalA = DoA | ReA | MiA | FaA | SolA | LaA | SiA deriving (Eq,Show)

data FiguraA = NegraA | CorcheaA deriving (Eq,Show)

data MelodiaA = EntonarA NotaMusicalA FiguraA MelodiaA| VaciaA deriving (Eq,Show)


contar_tiemposA :: MelodiaA -> Int
contar_tiemposA VaciaA = 0
contar_tiemposA (EntonarA _ NegraA VaciaA) = 2
contar_tiemposA (EntonarA _ CorcheaA VaciaA) = 1
contar_tiemposA (EntonarA a b c)
    | b == NegraA = 2 + contar_tiemposA c
    | b == CorcheaA = 1 + contar_tiemposA c



