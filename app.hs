length' :: [a] -> Int
length' []     = 0
length' (_:ns) = 1 + length' ns

even' :: Int -> Bool
even' 0 = True
even' n = odd' (n - 1)

odd' :: Int -> Bool
odd' 0 = False
odd' n = even' (n - 1)

-- logic

nots :: Int -> Int
nots 1 = 0
nots 0 = 1

xors :: Int -> Int -> Int
xors 1 a = nots a
xors 0 a = a

ors :: Int -> Int -> Int
ors 0 0 = 0
ors _ _ = 1

ands :: Int -> Int -> Int
ands 1 1 = 1
ands _ _ = 0

last' :: [a]    -> a
last'    (x:[]) =  x
last'    (x:xs) =  last' xs

halfAdder :: Int -> Int -> (Int, Int)
halfAdder x y = ( xors x y , ands x y )

fullAdder :: Int -> Int -> Int -> (Int, Int)
fullAdder x y c = ( xors (xors x y) c , ors (ands c (xors x y)) (ands x y) )

-- 1. Definir uma função recursiva que recebe um número binário sem sinal e retorna o valor equivalente em decimal. 
bin2dec :: [Int] -> Int
bin2dec []     = 0
bin2dec (n:ns) = (n * 2 ^ (length' ns)) + bin2dec(ns)

-- 2. Definir uma função recursiva que recebe um número decimal sem sinal e retorna o valor equivalente em binário. 
dec2bin :: Int -> [Int]
dec2bin 0 = []
dec2bin n = dec2bin(div n 2) ++ [mod n 2]

-- 3. Definir uma função recursiva que recebe um número binário em complemento de dois e retorna o valor equivalente em decimal. 
bincompl2dec :: [Int] -> Int
bincompl2dec (n:ns) | odd' n    = (- 2 ^ (length' ns)) + bin2dec(ns)
                    | otherwise = bin2dec(ns)

-- utilizei uma forma bem simples de calcular complemento de dois que consiste em: se o bit mais significativo foi 1, tranforme-o para negativo.
-- exemplo: 1011 = -2^4 (1) + 2^3 (0) + 2^2 (1) + 2^1 (1) = -8 + 0 + 2 + 1 = -5

-- 4. Definir uma função recursiva que recebe um número decimal e retorna o valor equivalente em binário complemento de dois. 
dec2bincompl :: Int -> [Int]
dec2bincompl n | n < 0     = dec2bin(n + 256)
               | otherwise = dec2bin(n)

-- to fix: dessa maneira, a funcao so aceita numeros de -128 a 127. 

-- 5. Definir uma função recursiva que recebe dois números binários em complemento de dois e retorna a soma binária destes dois valores. 
-- somarbin :: [Int] -> [Int] -> [Int]
-- 6. Definir uma função recursiva que recebe dois números binários em complemento de dois e retorna a subtração binária destes dois valores. 
-- subtrairbin :: [Int] -> [Int] -> [Int]
-- 7. Definir uma função recursiva que recebe dois números binários sem sinal e retorna a conjunção lógica bit a bit entre esses dois valores. 
-- andbin :: [Int] -> [Int] -> [Int] 
-- 8. Definir uma função recursiva que recebe dois números binários sem sinal e retorna a disjunção lógica bit a bit entre esses dois valores. 
-- orbin :: [Int] -> [Int] -> [Int] 
-- 9. Definir uma função recursiva que recebe um número fracionário decimal por parâmetro e devolve uma tupla com dois números binários representando, respectivamente, a mantissa e o expoente para representação binária da fração. 
-- frac2bin :: Double -> ([Int] -> [Int])
-- 10. Definir uma função recursiva que recebe uma tupla com dois números binários representando, respectivamente, a mantissa e o expoente de um número binário fracionário, e retorna o correspondente valor fracionário decimal. 
-- bin2frac :: ([Int] -> [Int]) -> Double 