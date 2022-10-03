-- Algoritmos y Estructuras de Datos I - Segundo Cuatrimestre 2022
-- Alumno: Ramirez, Ignacio Augusto


-- Ejercicio 1

-- a)

esCero :: Int -> Bool
esCero x 
        | x == 0 = True
        | otherwise = False

-- b)

esPositivo :: Int -> Bool
esPositivo x 
        | x > 0 = True
        | otherwise = False

-- c)

esVocal :: Char -> Bool
esVocal x
        | x == 'a' || x == 'e'|| x == 'i' || x =='o'|| x == 'u' = True
        | otherwise = False


-- Ejercicio 2

-- a)

paraTodo :: [Bool] -> Bool
paraTodo [] = True
paraTodo (x:xs)
        | x == True = paraTodo xs
        | x == False = False

-- b)

sumatoria :: [Float] -> Float
sumatoria [] = 0.0
sumatoria (x:xs) = x + sumatoria xs

-- c)

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

-- d)

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)

-- e)

lengthx :: [Float] -> Float
lengthx [] = 0.0
lengthx (x:xs) = 1 + lengthx xs

promedio :: [Float] -> Float
promedio [] = 0.0
promedio xs = sumatoria xs / lengthx xs

-- Ejercicio 3

pertenece :: Int -> [Int] -> Bool
pertenece _ [] = False
pertenece z (x:xs) 
            | x == z = True
            | x /= z = pertenece z xs

-- Ejercicio 4

-- a)

paraTodo1 :: [a] -> (a -> Bool) -> Bool
paraTodo1 [] _ = True
paraTodo1 (x:xs) f
        | f x == True = True && paraTodo1 xs f
        | otherwise = False

-- b)

existe1 :: [a] -> (a -> Bool) -> Bool
existe1 [] _ = False
existe1 (x:xs) f
        | f x == True = True
        | otherwise = existe1 xs f

-- c)

sumatoria1 :: [a] -> (a -> Int) -> Int
sumatoria1 [] _ = 0
sumatoria1 (x:xs) f = f x + sumatoria1 xs f

-- d)

productoria1 :: [a] -> (a -> Int) -> Int
productoria1 [] _ = 1
productoria1 (x:xs) f = f x * productoria1 xs f


-- Ejericio 5

paraTodo2 :: [Bool] ->Bool
paraTodo2 xs = paraTodo1 xs (== True)


-- Ejercicio 6

-- a)

todosPares :: [Int] -> Bool
todosPares xs = paraTodo1 xs even

-- b)

esMultiplo :: Int -> Int -> Bool
esMultiplo x y = mod y x == 0

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo x ys = existe1 ys (esMultiplo x)

-- c)

cuadrado :: Int-> Int
cuadrado x = x*x

sumaCuadrados :: Int -> Int
sumaCuadrados x = sumatoria1 [0..x] cuadrado

-- d)

factorial1 :: Int -> Int
factorial1 x = productoria1 [1..x] (*1)

-- e)

filtroPares :: Int -> Int
filtroPares x
        |mod x 2 == 0 = x
        |otherwise = 1

multiplicaPares :: [Int] -> Int
multiplicaPares xs = productoria1 xs filtroPares


-- Ejercicio 7

--- La funcion map toma una funcion y se lo aplica a cada elemento de la lista.
--- La funcion Filter toma una funcion(que devuelve un bool) y se la aplica a cada elemento de la lista y te devuelve una lista con los elementos que la cumplan.
-- Equivale a [2, -3, 6, 3, -7]
-- [1, 6, 2]


-- Ejercicio 8 

-- a)

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = x*2 : duplica xs 

-- b)

duplicaMap :: [Int] -> (Int-> Int) -> [Int]
duplicaMap xs b = map b xs


-- Ejercicio 9

-- a)

listaPares :: [Int] -> [Int]
listaPares [] = []
listaPares (x:xs)
        | mod x 2 == 0 = x:listaPares xs  
        | otherwise = listaPares xs

-- b)

listaParesFilter :: [Int]-> (Int -> Bool) -> [Int]
listaParesFilter [] _ = []
listaParesFilter xs b = filter b xs

-- c)

multiplicaPares2 :: [Int] -> (Int -> Bool) -> Int
multiplicaPares2 xs b = productoria (filter b xs)


-- Ejercicio 10 

-- a)

primIgualesA :: Eq a => a -> [a] -> [a]
primIgualesA _ [] = []
primIgualesA x (y:ys) 
        | x == y =  x : primIgualesA x ys 
        | otherwise = [] 

-- b)

primIgualesB ::  Eq a => a -> [a] -> [a]
primIgualesB x ys = takeWhile (== x) ys


-- Ejercicio 11

-- a)

primIguales :: Eq a => [a] -> [a]
primIguales [] = []
primIguales [x]= [x]
primIguales (x:(y:ys))
        | x == y  =  x: primIguales (y:ys)
        | otherwise = [x]

-- b)

primIguales1 :: Eq a => [a] -> [a]
primIguales1 [] = []
primIguales1 [x]= [x]
primIguales1 (y:ys) = primIgualesB y (y:ys)