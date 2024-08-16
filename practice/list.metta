
; type definition

(: ListVal Type)
(: NilVal (ListVal $val))
(: List (-> $val (ListVal $val) (ListVal $val)))
(: Length (-> (ListVal $val) Number))
(: Index (-> (ListVal $val) $val Number))


;Length function accepts a List and return the length of a list

(= (Length NilVal) 0)
(= (Length (List $x $y)) (+ 1 (Length $y)))

; tests
!(tests for Length function)

!(Length NilVal) ; should give 0
!(Length (List 3 (List 2 NilVal)))  ; should give 2
!(Length (List 1 (List 2 (List 3 (List 4 NilVal))))) ; should give 4


;Index function accepts a List and an element and returns the index of that element in the list
; It will return -1 if the element is not in the list

(= (Index NilVal $val) -1)
(= (Index (List $x $xy) $val ) (
    if (== $val $x ) 0
    (let $res (Index $xy $val) (
        if (== $res -1) -1 (+ 1 $res)
    ))
))


;tests
!(Tests for index function)

!(Index NilVal 3); should give -1
!(Index (List 1 (List 2 (List 3 (List 4 NilVal)))) 1) ; should give 0
!(Index (List 1 (List 2 (List 3 (List 4 NilVal)))) 4) ; should give 3
!(Index (List 1 (List 2 (List 3 (List 4 NilVal)))) 5) ; should give -1
