; a helper function that takes two numbers and returns the maximum one
(= (max $a $b)
  (if (> $a $b) $a $b)
)


; a recursive function that takes a binary tree and returns the maximum depth of the tree
(= (max_depth $tree) (
    case $tree
    (
    (($root $left $right) (
        + 1 (max (max_depth $left) (max_depth $right))
    ))
    (($root  $left) (
        + 1 (max_depth $left)
    ))
    ($root 1)
    )
))



; test cases
!(max_depth (a b c)) ; should return 2
!(max_depth (a b (c d (e (f))))) ; should return 4
!(max_depth (a(b(c(d(e(f))))))) ; should return 6
!(max_depth (a (b d e) c)) ; should return 3