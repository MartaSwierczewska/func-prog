askForWord = do
    putStrLn "Write a word to reverse"
    word <- getLine
    if word == "" then putStrLn "Koniec"
    else do
	print (reverse word)
	askForWord   

main = do
    askForWord 
