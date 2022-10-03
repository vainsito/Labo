-- Parcial 2022 Tema C

-- Nachito

-- Ejercicio 1

--a)

data NumeracionA = CeroA | UnoA | DosA | TresA | CuatroA deriving (Show)

misma_numeracionA :: NumeracionA -> NumeracionA -> Bool
misma_numeracionA CeroA CeroA = True
misma_numeracionA UnoA UnoA = True
misma_numeracionA DosA DosA = True
misma_numeracionA TresA TresA = True
misma_numeracionA CuatroA CuatroA = True
misma_numeracionA _ _ = False

--b)

data DominoA = FichaA NumeracionA NumeracionA

encajarA :: DominoA -> DominoA -> Maybe NumeracionA
encajarA (FichaA a b) (FichaA c d)
    | misma_numeracionA b c = Just d
    | otherwise = Nothing

-- encajarA (FichaA CeroA DosA) (FichaA UnoA CuatroA)
-- encajarA (FichaA CeroA DosA) (FichaA UnoA CuatroA)

-- Ejercicio 2

compatiblesA :: [DominoA] -> NumeracionA -> [NumeracionA]
compatiblesA [] a = []
compatiblesA ((FichaA c d ): ss) a
    | misma_numeracionA c a = d: compatiblesA ss a
    | otherwise = compatiblesA ss a


--Ejercicio 3

type EventoA = String

data CategoriaA = CumpleA | ReunionA | OtroA deriving (Eq,Show)

data CalendarioA = AgendarA EventoA CategoriaA CalendarioA | SinEventoA deriving (Eq,Show)

lista_reunionesA :: CalendarioA -> [EventoA]
lista_reunionesA SinEventoA = []
lista_reunionesA (AgendarA a b cs)
    | b == ReunionA = a:(lista_reunionesA cs)
    |otherwise = lista_reunionesA cs

--lista_reunionesA (AgendarA "ComicCon" ReunionA (AgendarA "CumpleSanJuan" CumpleA (AgendarA "VisitarMamaDeManu" OtroA SinEventoA)))

--Ejercicio 4

data Arbol a = Hoja | Rama (Arbol a) a (Arbol a) deriving Show

a_min :: Num a => Arbol a -> a
a_min (Rama a _ b) = 0
a_min (Rama a n b) = n min (a_min a b)