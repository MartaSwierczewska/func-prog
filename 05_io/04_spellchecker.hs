import System.IO 
import Control.Monad

main = do     
    contents <- readFile "file-zad4"
    dictionary <- readFile "/usr/share/dict/words" 
    list <- sequence contents  
    filter (`notElem` dictionary) list
    writeFile "not-in-dict-file" list

