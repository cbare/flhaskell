module Speller
(
  speller
) where

-- Examples:
-- speller ["abacus"] --> "a is for abacus"
-- speller [] --> ""
-- speller ["apple", "banana", "coconut"] 
--  --> "a is for apple, b is for banana, and c is for coconut"
-- speller ["whisky", "x-ray"]
--  --> "w is for whisky, and x is for x-ray"

-- turn "apple" into "a is for apple"
is_for :: String -> String
is_for "" = ""
is_for word@(x:_) = [x] ++ " is for " ++ word

-- join a list with ", " and ", and"
join :: [String] -> String
join [] = ""
join [x] = x
join (x:y:[]) = x ++ ", and " ++ y
join (x:xs) = x ++ ", " ++ (join xs)

-- generate a spelling book from the given list of words
-- example: speller ["apple", "banana", "cat", "dog", "egg"]
speller :: [String] -> String
speller words = join $ map is_for words
