-------------------------------------PARCIAL 2 2020------------------------------------------------------------------

--Ejercicio1--
--Alex--
--a)

data Palo = Espada | Oro | Copa | Basto deriving (Show)

mismoPalo :: Palo -> Palo -> Bool 
mismoPalo Espada Espada = True
mismoPalo Oro Oro = True
mismoPalo Copa Copa = True
mismoPalo Basto Basto = True
mismoPalo _ _ = False

--b)

data Figuralex = Un | Dois | Treis | Cuaitro | Cinco | Sis | Siti | Sota | Cabalho | ReyY deriving (Show)

valorFiguralex :: Figuralex -> Int
valorFiguralex Un = 1
valorFiguralex Dois = 2
valorFiguralex Treis = 3
valorFiguralex Cuaitro = 4
valorFiguralex Cinco = 5
valorFiguralex Sis = 6
valorFiguralex Siti = 7
valorFiguralex Sota = 8
valorFiguralex Cabalho = 9
valorFiguralex ReyY = 10

data YuGiOh = Naipex Figuralex Palo deriving (Show)
 
suma_CartasLex :: YuGiOh -> YuGiOh -> Maybe Int
suma_CartasLex (Naipex x y) (Naipex c z) 
        | mismoPalo y z = Just (valorFiguralex x + valorFiguralex c)
        | otherwise = Nothing 

--suma_CartasLex (Naipex Un Espada) (Naipex Dois Basto)
--suma_CartasLex (Naipex Un Espada) (Naipex Dois Espada)
 
--Ejercicio2--
compatibles :: YuGiOh -> [YuGiOh] -> [Figuralex]
compatibles _ [] = []
compatibles (Naipex c z) ((Naipex x y):xs)
        | mismoPalo z y && valorFiguralex c + valorFiguralex x < 15 = x : compatibles (Naipex c z) xs
        | otherwise = compatibles (Naipex c z) xs

--Ejercicio3--
-- type Duracion = Int
-- type Nombre = String 
-- data Cancion = Tema Nombre Duracion 
-- data Estado = Escuchado | NoEscuchado deriving Eq
-- data PlayList = Vacia | Enlista Cancion Estado PlayList

-- tiempoReproduccion :: PlayList -> Int
-- tiempoReproduccion Vacia = 0
-- tiempoReproduccion (Enlista (Tema n d) e xs)
--         | e == Escuchado = d + tiempoReproduccion xs 
--         | e == NoEscuchado = tiempoReproduccion xs

--tiempoReproduccion (Enlista (Tema "MamaDeManu" 3) Escuchado (Enlista (Tema "AbuelaDeManu" 5) Escuchado (Enlista (Tema "HermanoDeManu" 6) NoEscuchado Vacia)))

--Parciales TEMA C--
--Ejercicio1--
--a)
--data Numeracion = Cero | Uno | Dos | Tres | Cuatro deriving Show 
--misma_Numeracion :: Numeracion -> Numeracion -> Bool
--misma_Numeracion Cero Cero = True
--misma_Numeracion Uno Uno = True
--misma_Numeracion Dos Dos = True
--misma_Numeracion Tres Tres = True
--misma_Numeracion Cuatro Cuatro = True
--misma_Numeracion _ _ = False 
--b)
--data Domino = Ficha Numeracion Numeracion
--encajar :: Domino -> Domino -> Maybe Numeracion
--encajar (Ficha x y) (Ficha c z)
--        |misma_Numeracion y c = Just z
--        |misma_Numeracion y c == False = Nothing  
--Ejercicio2--
--compatibles1 :: [Domino] -> Numeracion -> [Numeracion]
--compatibles1 [] _ = []
--compatibles1 ((Ficha c z):xs) n 
--        |misma_Numeracion c n = z : compatibles1 xs n 
--        |misma_Numeracion c n == False = compatibles1 xs n

--compatibles1 [(Ficha Uno Dos),(Ficha Uno Cuatro)] Uno 
--compatibles1 [(Ficha Uno Dos),(Ficha Tres Cuatro)] Uno

--Ejercicio3--
--type Evento = String 
--data Categoria = Cumple | Reunion | Otro deriving Eq
--data Calendario = SinEventos | Agendar Evento Categoria Calendario 

--listarReuniones :: Calendario -> [Evento]
--listarReuniones SinEventos = []
--listarReuniones (Agendar e c xs)
--        | c == Reunion = e : listarReuniones xs 
--        | otherwise = listarReuniones xs 

--listarReuniones (Agendar "ComicCon" Reunion (Agendar "CumpleSanJuan" Cumple (Agendar "VisitarMamaDeManu" Otro SinEventos)))

--卂几ㄒ乇丂 ᗪ乇 丂乇Ꮆㄩ丨尺 匚ㄖ几 乇ㄥ 丂丨Ꮆㄩ丨乇几ㄒ乇 乇ﾌ乇尺匚丨匚丨ㄖ ㄥ乇乇 卂ㄒ乇几ㄒ卂爪乇几ㄒ乇-----------------------
--------------------------------------------------------------------------------------------𝗭𝗢𝗡𝗔 𝗣𝗔𝗥𝗔 𝗚𝗘𝗡𝗧𝗘 𝗖𝗢𝗡 𝗦𝗪𝗔𝗚--⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
---------------------------------------------𝖊𝖏𝖊𝖗𝖈𝖎𝖈𝖎𝖔 𝖉𝖊𝖑 𝖘𝖚𝖕𝖗𝖝-------------------------------------------------------------
-----------------𝕰𝕵𝕰𝕽𝕮𝕴𝕮𝕴𝕺  1-------------------------
--------------------------------------------𝓟𝓤𝓝𝓣𝓞      𝓐 -------------------------------------------------------------

data Palovich = Espadavich | Orovich | Bastovich | Copavich deriving (Show)
mismo_palovich :: Palovich -> Palovich -> Bool
mismo_palovich Espadavich Espadavich = True
mismo_palovich Orovich Orovich = True
mismo_palovich Bastovich Bastovich = True
mismo_palovich Copavich Copavich = True
mismo_palovich _ _ = False

---------------------------------------------𝓟𝓤𝓝𝓣𝓞       𝓑--------------------------------------------------------------

data Figuravich = Unovich | Dosovich |Tresovich | Cuatrovich | Cincovich | Seisovich | Sietevich | Sotavich | Caballovich | Reypadre deriving (Show)
data Cartavich = Naipe Figuravich Palovich deriving (Show)

valor_figurovich :: Figuravich -> Int
valor_figurovich Unovich = 1
valor_figurovich Dosovich = 2
valor_figurovich Tresovich = 3
valor_figurovich Cuatrovich = 4 
valor_figurovich Cincovich = 5
valor_figurovich Seisovich = 6
valor_figurovich Sietevich = 7
valor_figurovich Sotavich = 8
valor_figurovich Caballovich = 9
valor_figurovich Reypadre = 10

suma_cartasSurpa :: Cartavich -> Cartavich -> Maybe Int
suma_cartasSurpa (Naipe a b) (Naipe c d)
            |mismo_palovich b d = Just (valor_figurovich a + valor_figurovich c)
            |otherwise = Nothing

--Ejemplos : suma_cartasSurpa (Naipe Unovich Espadavich) (Naipe Dosovich Espadavich)
--                     /"\
--                    |\./|
--                    |   |
--                    |   |
--                    |>~<|
--                    |   |
--                 /'\|   |/'\..
--             /~\|   |   |   | \
--            |   =[@]=   |   |  \
--            |   |   |   |   |   \
--            | ~   ~   ~   ~ |`   )
--            |                   /
--             \                 /
--              \               /
--               \    _____    /
--                |--//''`\--|
--                | (( +==)) |
--                |--\_|_//--|

--------------------------------------------- ℘ųŋɬơ 2       --------------------------------------------------------------
compatiblesm :: Cartavich -> [Cartavich] -> [Figuravich]
compatiblesm _ [] = []
compatiblesm (Naipe a b) ((Naipe c d):cs)
            | mismo_palovich b d && valor_figurovich a + valor_figurovich c < 15 = c : compatiblesm (Naipe a b) cs
            | otherwise = compatiblesm (Naipe a b) cs

-- Example : compatiblesm (Naipe Seisovich Orovich) [Naipe Reypadre Orovich, Naipe Tresovich Bastovich, Naipe Sotavich Orovich]


--------------------------------------------- ℘ųŋɬơ 3       --------------------------------------------------------------
--type Duracion = Int
--type Nombre = String

--data Cancion = Tema Nombre Duracion deriving (Eq)
--data Estado = Escuchado | NoEscuchado deriving (Eq)
--data Playlist = Vacia | EnLista Cancion Estado Playlist

--tiempo_reproduccion :: Playlist -> Int
--tiempo_reproduccion Vacia = 0
--tiempo_reproduccion (EnLista (Tema a b) e xs) 
--        | e == Escuchado = b + tiempo_reproduccion xs
--        | e == NoEscuchado = tiempo_reproduccion xs

--tiempo_reproduccion (Enlista (Tema "MamaDeManu" 3) Escuchado (Enlista (Tema "AbuelaDeManu" 5) Escuchado (Enlista (Tema "HermanoDeManu" 6) NoEscuchado Vacia)))
--tiempo_reproduccion (EnLista (Tema "YoSoyCholo" 25) Escuchado (EnLista (Tema "ChinoCochino" 2) NoEscuchado (EnLista (Tema "QueOlorcitoTabo" 5) Escuchado Vacia)))

--------------------------------------------------------------------------------------------------------------------------
--------------------------------千丨几卂ㄥ丨乙卂几 ㄥㄖ丂 乇ﾌ乇尺匚丨匚丨ㄖ丂 ᗪ乇ㄥ 丂ㄩ卩尺乂---------------------------------



--------------------------------------------------------
---------eJERCICIO DEL MANUuneitoRRRR???----------------
data Palo1 = Espada1 | Oro1 | Copa1 | Basto1 deriving (Show)

mismo_palo :: Palo1 -> Palo1 -> Bool
mismo_palo Espada1 Espada1 = True
mismo_palo Oro1 Oro1 = True
mismo_palo Copa1 Copa1 = True
mismo_palo Basto1 Basto1 = True
mismo_palo _ _ = False

--b)
data Figuras = Unos | Doss | Tress | Cuatros | Cincos | Seiss | Sietes | Sotas | Caballos | Reys deriving (Show)

valor_figura :: Figuras -> Int
valor_figura Unos = 1
valor_figura Doss = 2
valor_figura Tress = 3
valor_figura Cuatros = 4 
valor_figura Cincos = 5
valor_figura Seiss = 6
valor_figura Sietes = 7
valor_figura Sotas = 8
valor_figura Caballos = 9
valor_figura Reys = 10   

data Carta1 = NaipeS Figuras Palo1 deriving (Show)

suma_cartass :: Carta1 -> Carta1 -> Maybe Int
suma_cartass (NaipeS x y)(NaipeS z w) 
                |mismo_palo y w = Just (valor_figura x + valor_figura z) 
                |otherwise = Nothing

--Ejercicio 2)
compatibles :: Carta1 -> [Carta1] -> [Figuras]
compatibles (NaipeS a b) [] = []
compatibles (NaipeS a b) ((NaipeS x y):cs) 
                            |mismo_palo b y && ((valor_figura a) + (valor_figura x) < 15) = x:compatibles (NaipeS a b) cs 
                            |otherwise = compatibles (NaipeS a b) cs 

----Ejercicio 3---
type Duracion = Int 
type Nombre = String
data Cancion = Tema Nombre Duracion deriving Eq 
data Estado = Escuchado | NoEscuchado deriving Eq 
data PlayList = Vacia | EnLista Cancion Estado PlayList

tiempoReproduccion :: PlayList -> Int 
tiempoReproduccion Vacia = 0
tiempoReproduccion (EnLista (Tema b c) x cs) 
                | x == Escuchado = c + tiempoReproduccion  cs
                | otherwise = tiempoReproduccion cs
                
--------------------- EL PAPU---------------------
-- -- a --
-- data Palo = Espada | Basto | Oro | Copa deriving (Show)

-- mismo_paloA :: Palo -> Palo -> Bool
-- mismo_paloA Oro Oro = True
-- mismo_paloA Copa Copa = True
-- mismo_paloA Basto Basto = True
-- mismo_paloA _ _ = False

-- --b)

-- data Figura = Uno | Dos | Tres | Cuatro | Cinco | Seis | Siete | Sota | Caballo | Rey deriving (Show)

-- valor_figuraA :: Figura -> Int
-- valor_figuraA Uno = 1
-- valor_figuraA Dos = 2
-- valor_figuraA Tres = 3
-- valor_figuraA Cuatro = 4
-- valor_figuraA Cinco = 5
-- valor_figuraA Seis = 6
-- valor_figuraA Siete = 7
-- valor_figuraA Sota = 8
-- valor_figuraA Caballo = 9
-- valor_figuraA Rey = 10

-- data Carta = Naipe Figura Palo deriving (Show)

-- suma_cartasA :: Carta -> Carta -> Maybe Int
-- suma_cartasA (Naipe a b) (Naipe c d)
--     | mismo_paloA b d = Just (valor_figuraA a + valor_figuraA c)
--     | otherwise = Nothing 

-- ---------------- Ejercicio 2 --------------
-- compatibles :: Carta -> [Carta] -> [Figura]
-- compatibles (Naipe x y) [] = []
-- compatibles (Naipe x y) ((Naipe a b):xs)
--     | mismo_paloA y b == True && valor_figuraA x  + valor_figuraA a < 15 = x : compatibles (Naipe x y) xs
--     | otherwise = compatibles (Naipe x y) xs

--compatibles (Naipe Seis Oro) [Naipe Rey Oro, Naipe Tres Basto, Naipe Sota Oro]

-----------------------------------------Nachito-LOOL------------------------------------
--surpa estuvo aqui--

-- Ejercicio 1

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

--suma_cartasA (NaipeA SieteA CopaA) (NaipeA CincoA BastoA)
--suma_cartasA (NaipeA SieteA CopaA) (NaipeA CincoA CopaA)

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

data CancionA = Tema NombreA DuracionA deriving (Eq, Show)
data EstadoA = EscuchadoA | NoEscuchadoA deriving (Eq, Show)
data PlaylistA = EnListaA CancionA EstadoA PlaylistA | VaciaA deriving (Eq, Show)

tiempo_reproduccionA :: PlaylistA -> Int
tiempo_reproduccionA VaciaA = 0
tiempo_reproduccionA (EnListaA (Tema a b) c play) 
    |c == EscuchadoA = b + tiempo_reproduccionA play
    |c == NoEscuchadoA = tiempo_reproduccionA play

--tiempo_reproduccionA (EnListaA (Tema "YoSoyCholo" 25) EscuchadoA (EnListaA (Tema "ChinoCochino" 2) NoEscuchadoA (EnListaA (Tema "QueOlorcitoTabo" 5) EscuchadoA VaciaA)))

