import System.IO  
import Data.Char
 
main = do  
    contents <- readFile "file"  
    writeFile "new_file" (map toUpper contents) 
    putStrLn "Zapisano do pliku 'new_file'"
