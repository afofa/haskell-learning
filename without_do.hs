main1 = do
    putStrLn "Enter name:"
    name <- getLine
    putStrLn ("Hi " ++ name)

main2 = putStrLn "Enter name:" >> getLine >>= putStrLn.("Hi " ++ )