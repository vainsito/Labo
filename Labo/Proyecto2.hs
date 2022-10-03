----------Actividad 1-----------

--a)
data Carrera = Matematica | Fisica | Computacion | Astronomia deriving Show
--b)
titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licienciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"
--c)
data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Ord,Eq,Bounded,Show)
--d)
cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

----------Actividad 2-----------

--a)
--Solo debemos de usar el deriving (Ord,Bounded,Show,Eq) dentro del nuevo tipo definido NotaBasica

----------Actividad 3-----------
--a)
minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (y:x:xs) | y < x = minimoElemento (y:xs)  
                        | otherwise = minimoElemento (x:xs)
--b)
minimoElemento' :: (Bounded a, Ord a) => [a] -> a
minimoElemento' [] = minBound
minimoElemento' (y:x:xs) | y < x = minimoElemento (y:xs)  
                         | otherwise = minimoElemento (x:xs)
--A la hora de introducir la funcion y llamar los argumentos, lo hacemos declarando el tipo de la lista que empleamos 
--c)
notaGrave :: [NotaBasica] -> NotaBasica
notaGrave [x] = x
notaGrave xs = minimoElemento xs

----------Actividad 4-----------
--a)
type Ingreso = Int

data Cargo = Titular | Asociado | Adjunto | Asistente | Auxiliar deriving Show
data Area = Administrativa | Ensenanza | Economica | Postgrado  deriving Show 
                
data Persona = Decane
            | Docente Cargo 
            | NoDocente Area 
            | Estudiante Carrera Ingreso deriving Show
--b)
cuantos_doc :: [Persona] -> Cargo -> Int
cuantos_doc [] c = 0
cuantos_doc ((Docente x):xs) c
        | mismocargo x c = 1 + cuantos_doc xs c
        | otherwise = cuantos_doc xs c
cuantos_doc (_:xs) c = cuantos_doc xs c

mismocargo::Cargo -> Cargo -> Bool
mismocargo Titular Titular = True
mismocargo Asociado Asociado = True
mismocargo Adjunto Adjunto = True
mismocargo Asistente Asistente = True
mismocargo Auxiliar Auxiliar = True
mismocargo _ _ = False
--d)
cargoPersona :: Cargo -> Persona -> Bool
cargoPersona c (Docente a) 
                | mismocargo c a = True
                |otherwise = False
cargoPersona c _ = False

cuantos_doc2 :: [Persona] -> Cargo -> Int
cuantos_doc2 [] c = 0
cuantos_doc2 xs c = length (filter (cargoPersona c) xs)
--Mete a los docentes en una lista, EL filter toma la lista y le aplica cargoPersona c

----------Actividad 5-----------
--a)
data Alteracion = Bemol | Sostenido | Natural deriving (Eq, Show, Ord)
data NotaMusical = Nota NotaBasica Alteracion deriving (Eq, Show, Ord)-- Tipo algebraico, posee dos parametros

sonido :: NotaBasica -> Int
sonido Do = 1
sonido Re = 3
sonido Mi = 5
sonido Fa = 6
sonido Sol = 8
sonido La = 10
sonido Si = 12
--b)
mismoAlteracion:: Alteracion -> Alteracion -> Bool
mismoAlteracion Bemol Bemol = True
mismoAlteracion Sostenido Sostenido = True
mismoAlteracion Natural Natural = True
mismoAlteracion _ _ = False

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota z y)
         | mismoAlteracion y Bemol = sonido z - 1 
         | mismoAlteracion y Sostenido = sonido z + 1 
         | mismoAlteracion y Natural = sonido z
sonidoCromatico (Nota z _) = sonido z

sonidoCromaticoE :: NotaMusical -> Int
sonidoCromaticoE (Nota z Bemol) = sonido z - 1
sonidoCromaticoE (Nota z Sostenido) = sonido z + 1
sonidoCromaticoE (Nota z Natural) = sonido z

--c)
sonidoCromaticoIg :: NotaMusical -> NotaMusical -> Bool 
sonidoCromaticoIg (Nota x y) (Nota h z) 
        | sonidoCromaticoE (Nota x y) == sonidoCromaticoE (Nota h z)  = True    
        | otherwise = False
--d)
sonidoCromaticoMM :: NotaMusical -> NotaMusical -> Bool 
sonidoCromaticoMM (Nota x y) (Nota h z) 
        | sonidoCromaticoE (Nota x y) <= sonidoCromaticoE (Nota h z)  = True    
        | otherwise = False
----------Actividad 6-----------
--a)
primerElemento :: [ a ] -> Maybe a
primerElemento [] = Nothing 
primerElemento (x:xs) = Just x
----------Actividad 7----------
data Cola = VaciaC | Encolada Persona Cola deriving Show
--a)
atender :: Cola -> Maybe Cola
atender VaciaC = Nothing
atender (Encolada x xs) = Just xs 
--b)
encolar:: Persona -> Cola -> Cola
encolar p VaciaC = Encolada p VaciaC
encolar per (Encolada p cola) = Encolada p (encolar per cola)
--c)
busca :: Cola -> Cargo -> Maybe Persona
busca VaciaC c = Nothing
busca (Encolada (Docente a) col) c     
        | cargoPersona c (Docente a) == True = Just (Docente a)
busca (Encolada _ xs) c = busca xs c 
--PreguntaB
--Cola se parece a el tipo recursivo x:"xs" (Listas)
----------Actividad 8-----------
data ListaAsoc a b = Vacia | Nodo a b (ListaAsoc a b) deriving (Show, Eq) 
type Diccionario = ListaAsoc String String
type Padron = ListaAsoc Int String
--a)
type ListaTelefonica = ListaAsoc Int String
--b)
--1
la_long :: ListaAsoc a b -> Int
la_long Vacia = 0
la_long (Nodo a b xs) = 1 + la_long xs 
--2
la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vacia Vacia = Vacia
la_concat Vacia (Nodo y s xs) = Nodo y s xs
la_concat (Nodo a b zs) Vacia = Nodo a b zs
la_concat (Nodo a b zs) xs = Nodo a b (la_concat xs zs) 
-- lo probamos con esto la_concat (Nodo "alexis" "Ortiz" Vacia) (Nodo "Estudiante" "Famaf" Vacia)
--3
la_agregar :: ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vacia a b = (Nodo a b Vacia)
la_agregar nod a b = (Nodo a b nod)
--4
la_pares :: ListaAsoc a b -> [(a,b)]
la_pares Vacia = []
la_pares (Nodo a b ys) = (a,b) : la_pares ys
--5
la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vacia _ = Nothing
la_busca (Nodo a b xs) c
        | a == c = Just b
        | otherwise = la_busca xs c 
--6
la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b 
la_borrar _ Vacia = Vacia
la_borrar c (Nodo a b xs)
        | a == c = xs
        | otherwise = Nodo a b (la_borrar c xs)