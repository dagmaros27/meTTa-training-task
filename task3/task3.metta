; a recursive function that takes a binary tree and a target then traverse through a binary tree and return the amount of the target in the tree

(= (count_target $tree $target) (
    case $tree (
     (($root $left $right) (
        + (count_target $root $target) (+ (count_target $left $target) (count_target $right $target))
    ))

    ( ($root $child) (+ (count_target $root $target) (count_target $child $target)))
    
    ($root 
    (if (== $root $target) 1 0))

    )
  
))

; test cases
!(count_target (a (b e (f a (g a e))) c) e) ; should return 2
!(count_target (a (b e) c) a) ; should return 1
!(count_target (a (b e) c) f) ; should return 0
!(count_target (a (b e (f b (h b))) b) b) ; should return 4
