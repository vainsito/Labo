----------------- 1-----------------------------------------------
--1a

data Carrera = Matematica | Fisica | Computacion | Astronomia 
--1b

titulo :: Carrera -> String
titulo Matematica = "Matematica"
titulo Fisica = "Fisica"
titulo Computacion = "Computacion"
titulo Astronomia = "Astromia"

--1c

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si  deriving (Eq, Ord, Bounded, Show)

--1d
cifradoAmericano :: NotaBasica -> Char
cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

-----------------------------2------------------------------

-----------------------------3-------------------------------
--3a
minimoElemento :: Ord a  => [a] -> a
minimoElemento xs = minimum xs  

--3b
minimoElemento' :: (Ord a, Num a) => [a] -> a
minimoElemento' [] = 0
minimoElemento' xs = minimum xs

--3c
-- minimoElemento [Fa, La, Sol, Re, Fa]

------------------------------4--------------------------
type Ingreso = Int
--Cargo y Area son tipos enumerados
data Cargo = Titular | Asociado | Adjunto | Asistente | Auxiliar deriving (Eq, Show)
data Area = Administrativa | Ensenanza | Economica | Postgrado

---Persona es un tipo algebraico
data Persona = Decane
            | Docente Cargo 
            | NoDocente Area 
            | Estudiante Carrera Ingreso
-- 4b El tipo de Docente es Cargo o String
--4c
cuantos_doc :: [Persona] -> Cargo -> Int
cuantos_doc [] _ = 0
cuantos_doc xs c = length (filter c xs) 
