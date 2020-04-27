import System.Random

getRandom = do
    num <- randomRIO (1,10 :: Int)
    return num

play 0 randomNumber= return()
play n randomNumber = do
    putStrLn "Guess a number in range 1-10"
    number <- getLine
    if (read number :: Int) == randomNumber then putStrLn "You win"
    else if (read number :: Int) < randomNumber then do
	putStrLn "Your number is to small"
	play (n-1) randomNumber
    else do 
	putStrLn "Your number is too big"
	play (n-1) randomNumber

main = do
    randomNumber <- getRandom
    play 3 randomNumber
