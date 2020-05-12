import System.IO 
import Control.Monad

main = do     
    contents <- readFile "file-zad4"
    dictionary <- readFile "/usr/share/dict/words" 
    writeFile "not-in-dict-file" $ filter (`notElem` dictionary) contents

