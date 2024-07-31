
; a recursive function that takes a binary tree and a target value as argument and search for the target in the tree, returning True if it is found otherwise False

(= (search_value $tree $target) (
    case $tree (
     (($root $left $right) (
        or (search_value $root $target) (or (search_value $left $target) (search_value $right $target))
    ))

    ( ($root $child) (or (search_value $root $target) (search_value $child $target)))
    
    ($root 
    (if (== $root $target) True False))

    )
  
))


; test cases
!(search_value (a (b e) c) a) ; should return True
!(search_value (a (b e) c) f) ; should return False
!(search_value (a (b e (f g (h i))) c) h) ; should return True
!(search_value (a (b e (f e)) c) h) ; should return False



