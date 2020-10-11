module Tree
(
  Tree(Leaf, Node), treeDepth, treeInsert, treeSum, treeToList, t1, t2
) where
    
data Tree = Leaf | Node Int Tree Tree deriving (Eq, Show)

treeDepth :: Tree -> Int
treeDepth Leaf = 0
treeDepth (Node _ t1 t2) = 1 + (max (treeDepth t1) (treeDepth t2))

treeSum :: Tree -> Int
treeSum Leaf = 0
treeSum (Node n t1 t2) = n + (treeSum t1) + (treeSum t2)

isSortedTree :: Tree -> Int -> Int -> Bool
isSortedTree Leaf _ _ = True
isSortedTree (Node x t1 t2) i j =
    let leftSorted   = isSortedTree t1 i x
        rightSorted  = isSortedTree t2 x j
    in x >= i && x< j && leftSorted && rightSorted


addNewMax :: Tree -> Tree
-- add a new max element to tree
addNewMax Leaf = Node 0 Leaf Leaf  -- input tree with no nodes
addNewMax (Node x t1 Leaf) = Node x t1 (Node (x+1) Leaf Leaf)  -- this is the rightmost Node
addNewMax (Node x t1 t2) = Node x t1 (addNewMax t2) -- intermediate node, go down right subtree


treeInsert :: Tree -> Int -> Tree
treeInsert Leaf val = Node val Leaf Leaf
treeInsert (Node x t1 t2) val
  | val <= x =  (Node x
                  (treeInsert t1 val)
                  t2)
  | otherwise = (Node x
                  t1
                  (treeInsert t2 val))

treeToList :: Tree -> [Int]
treeToList Leaf = []
treeToList (Node x t1 t2) = (treeToList t1) ++ [x] ++ (treeToList t2)


t1 = Node 9 Leaf Leaf

t2 = (Node 9
        (Node 5 (Node 3 Leaf Leaf) (Node 7 Leaf Leaf))
        (Node 17
            (Node 14 Leaf Leaf)
            (Node 19
                (Node 18 Leaf Leaf)
                Leaf))
    )
