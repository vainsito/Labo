--Ejercicio 1--
--filter :: (a -> Bool) -> [a] -> [a]

esMultiplo :: Int -> Int -> Bool
esMultiplo x y = mod y x == 0

multiplos :: Int -> [Int] -> [Int]
multiplos _ [] = []
multiplos n (x:xs) = filter (esMultiplo n) (x:xs) 

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

sumaMultiplos :: [Int] -> Int -> Int
sumaMultiplos (x:xs) c = sumatoria (multiplos c (x:xs))

--Ejercicio 2--

data Carrera = Matematica | Astronomia | Fisica | Computacion
type Nombre = String
type Legajo = Int
data Estudiante = Est Legajo Nombre Carrera 
--a)
mismaCarrera :: Carrera -> Carrera -> Bool
mismaCarrera Matematica Matematica = True
mismaCarrera Astronomia Astronomia = True
mismaCarrera Fisica Fisica = True
mismaCarrera Computacion Computacion = True
mismaCarrera _ _ = False

buscar :: [Estudiante] -> Carrera -> [Nombre] 
buscar [] _ = []
buscar ((Est x y z):xs) c
        |mismaCarrera z c == True = y : buscar xs c
        |mismaCarrera z c == False = buscar xs c
--b)
-- buscar [(Est 32 "Nachito" Fisica),(Est 23 "Alexis" Computacion),(Est 12 "Tomas" Matematica)] Fisica

--Ejercicio 3--

data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) 

la_existe :: Eq a => ListaAsoc a b -> a -> Bool 
la_existe Vacia _ = False
la_existe (Nodo a b xs) c 
        | a == c = True 
        | otherwise = la_existe xs c

--la_existe (Nodo 34 "Dolor" (Nodo 32 "Calor" (Nodo 21 "Verdad" Vacia))) 34