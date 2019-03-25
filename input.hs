import Control.Monad

main = do
    putStrLn "Why did the banker leave his job?"
    answer <- getLine
    putStrLn (if answer == "he lost interest" then "Correct!" else "Wrong!")

echo = do
    putStrLn "Say something.."
    said <- getLine
    putStrLn ("You said: " ++ said)

get_y_to_exit = do
    putStrLn "quit the program? y/n"
    ans <- getLine
    if ans /= "y" then do
        putStrLn "not quitting"
        get_y_to_exit
    else return ()

get_y_to_exit_new = do
    putStrLn "quit? y/n"
    ans <- getLine
    when (ans /= "y") $ do
        putStrLn "not quitting"
        get_y_to_exit_new