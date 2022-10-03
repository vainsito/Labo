----------------------------1-------------------
-- a)
data Palo = Espada | Basto | Oro | Copa deriving (Show)

mismo_paloA :: Palo -> Palo -> Bool
mismo_paloA Oro Oro = True
mismo_paloA Copa Copa = True
mismo_paloA Basto Basto = True
mismo_paloA _ _ = False

--b)

data Figura = Uno | Dos | Tres | Cuatro | Cinco | Seis | Siete | Sota | Caballo | Rey deriving (Show)

valor_figuraA :: Figura -> Int
valor_figuraA Uno = 1
valor_figuraA Dos = 2
valor_figuraA Tres = 3
valor_figuraA Cuatro = 4
valor_figuraA Cinco = 5
valor_figuraA Seis = 6
valor_figuraA Siete = 7
valor_figuraA Sota = 8
valor_figuraA Caballo = 9
valor_figuraA Rey = 10

data Carta = Naipe Figura Palo deriving (Show)

suma_cartasA :: Carta -> Carta -> Maybe Int
suma_cartasA (Naipe a b) (Naipe c d)
    | mismo_paloA b d = Just (valor_figuraA a + valor_figuraA c)
    | otherwise = Nothing 

---------------- Ejercicio 2 --------------
compatibles :: Carta -> [Carta] -> [Figura]
compatibles (Naipe x y) [] = []
compatibles (Naipe x y) ((Naipe a b):xs)
    | mismo_paloA y b == True && valor_figuraA x  + valor_figuraA a < 15 = x : compatibles (Naipe x y) xs
    | otherwise = compatibles (Naipe x y) xs

--compatibles (Naipe Seis Oro) [Naipe Rey Oro, Naipe Tres Basto, Naipe Sota Oro]

------------------- Ejercicia 3 -------------------------

type Duracion = Int
type Nombre = String
data Cancion = Tema Nombre Duracion deriving (Show, Eq)
data Estado = Escuchado | NoEscuchado deriving (Eq, Show)
data PlayList = Vacia | EnLista Cancion Estado PlayList

tiempo_repr :: PlayList -> Int
tiempo_repr Vacia = 0 
tiempo_repr (EnLista (Tema l k) b xs)
    | b == Escuchado = k + tiempo_repr xs
    | b == NoEscuchado = tiempo_repr xs


    -- tiempo_repr (EnLista (Tema "MamaDeManu" 3) Escuchado (EnLista (Tema "AbuelaDeManu" 5) Escuchado (EnLista (Tema "HermanoDeManu" 6) NoEscuchado Vacia)))

data Numeracion = Cero | Unox | Dosx | Tresx | Cuatrox deriving (Show)

misma_numeracion :: Numeracion -> Numeracion -> Bool
misma_numeracion Cero Cero = True
misma_numeracion Unox Unox = True
misma_numeracion Dosx Dosx  = True
misma_numeracion Tresx Tresx = True
misma_numeracion Cuatrox Cuatrox = True
misma_numeracion _ _ = False

data Domino = Ficha Numeracion Numeracion 

encajar :: Domino -> Domino -> Maybe Numeracion
encajar (Ficha a b) (Ficha c d)
    | misma_numeracion b c = Just d
    | otherwise = Nothing

------------------ Ejercicio 2 -------------------
compatiblesx :: [Domino] -> Numeracion -> [Numeracion]
compatiblesx [] _ = []
compatiblesx ((Ficha a b):xs) n
    | misma_numeracion a n = b : compatiblesx xs n
    | otherwise = compatiblesx xs n

---------------------- Ejercicio 3 --------------------

type Evento = String
data Categoria = Cumple | Reunion | Otro deriving (Show, Eq)

data Calendario =  SinEventos | Agendar Evento Categoria Calendario deriving (Show, Eq)

listar_reuniones :: Calendario -> [Evento]
listar_reuniones SinEventos = []
listar_reuniones (Agendar (es) b xs)
    | b == Reunion = es : listar_reuniones xs
    | otherwise = listar_reuniones xs

-- listar_reuniones (Agendar ("Ver a Surpa") Reunion (Agendar ("Cumple del Alex") Reunion (Agendar ("CsGo") Otro SinEventos)))
