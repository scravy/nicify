import Text.Nicify
import System.Environment (getArgs)

main = do
    args <- getArgs
    main' args

main' [] = interact nicify

main' (x:[]) = do
    contents <- readFile x
    putStr (nicify contents)

main' (x:xs) = main' [x] >> main' xs

