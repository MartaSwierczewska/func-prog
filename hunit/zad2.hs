import Test.HUnit

main = do   
    runTestTT testlist
    return () 

testlist = TestList ["pusty" ~: reverseWords "" ~?= ""
	, "duze litery" ~: reverseWords "Szymon" ~?= "nomyzS"
	, "zdanie ze spacjami" ~: reverseWords "Ala ma kota" ~?= "otak am alA"
		]
 
reverseWords :: String -> String  
reverseWords = unwords . map reverse . words
