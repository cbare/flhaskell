-- Word guessing game
module Starman
(
  starman
) where


-- takes a mystery word and a string of guessed letters and returns
-- the display word with correctly guessed letters revealed and
-- other letters replaced with dashes.
displayWord :: String -> String -> String
displayWord word gs = [if c `elem` gs then c else '-' | c <- word]

-- takes a mystery word and a string of guessed letters and returns
-- True if the word has been completely guessed
guessedCompleteWord :: String -> String -> Bool
guessedCompleteWord word gs = all (\c -> c `elem` (gs::String)) word

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

-- update list of guesses and n based on the guessed letter
check :: String -> String -> Int -> Maybe Char -> (String, Int, String)
check word gs n Nothing = (gs, n, "huh?")
check word gs n (Just g)
  | g `elem` gs   = (gs, n, "already guessed '" ++ [g] ++ "'")
  | g `elem` word = (g:gs, n, "correct!")
  | otherwise = (g:gs, n-1, "nope!")

getGuess :: String -> String -> Int -> IO ()
getGuess word gs n =
  do
    let display = displayWord word gs
    putStrLn (display ++ "  " ++ take n (repeat '*'))
    putStrLn "::Enter your guess: "
    q <- getLine
    let (gs', n', msg) = check word gs n (safeHead q)
    putStrLn ("  " ++ msg ++ "\n")
    turn word gs' n'

turn :: String -> String -> Int -> IO ()
turn word gs n
    | n == 0 = putStrLn "You lose"
    | guessedCompleteWord word gs = putStrLn "You win!"
    | otherwise = getGuess word gs n

starman word n = turn word "" n
