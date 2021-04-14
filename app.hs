-- 1. Definir uma função recursiva que recebe um número binário sem sinal e retorna o valor equivalente em decimal. 
bin2dec :: [Int] -> Int
-- 2. Definir uma função recursiva que recebe um número decimal sem sinal e retorna o valor equivalente em binário. 
dec2bin :: Int -> [Int]
-- 3. Definir uma função recursiva que recebe um número binário em complemento de dois e retorna o valor equivalente em decimal. 
bincompl2dec :: [Int] -> Int
-- 4. Definir uma função recursiva que recebe um número decimal e retorna o valor equivalente em binário complemento de dois. 
dec2bincompl :: Int -> [Int]
-- 5. Definir uma função recursiva que recebe dois números binários em complemento de dois e retorna a soma binária destes dois valores. 
somarbin :: [Int] -> [Int] -> [Int]
-- 6. Definir uma função recursiva que recebe dois números binários em complemento de dois e retorna a subtração binária destes dois valores. 
subtrairbin :: [Int] -> [Int] -> [Int]
-- 7. Definir uma função recursiva que recebe dois números binários sem sinal e retorna a conjunção lógica bit a bit entre esses dois valores. 
andbin :: [Int] -> [Int] -> [Int] 
-- 8. Definir uma função recursiva que recebe dois números binários sem sinal e retorna a disjunção lógica bit a bit entre esses dois valores. 
orbin :: [Int] -> [Int] -> [Int] 
-- 9. Definir uma função recursiva que recebe um número fracionário decimal por parâmetro e devolve uma tupla com dois números binários representando, respectivamente, a mantissa e o expoente para representação binária da fração. 
frac2bin :: Double -> ([Int] -> [Int])
-- 10. Definir uma função recursiva que recebe uma tupla com dois números binários representando, respectivamente, a mantissa e o expoente de um número binário fracionário, e retorna o correspondente valor fracionário decimal. 
bin2frac :: ([Int] -> [Int]) -> Double D

