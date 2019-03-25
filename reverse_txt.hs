import System.IO

main = do
    input_str <- readFile "input.txt"
    putStrLn "writing to file..."
    writeFile "output.txt" (reverse_string input_str)

reverse_string [] = []
reverse_string x = (last x) : (reverse_string (init x))