# Initialization

We start by evaluating the structure of the tree with a case expression. For a single node tree, it checks if the root value matches the target value . If it does, it returns 1, otherwise, it returns 0. This forms the base case, ensuring that an isolated node is correctly counted against the target value.

# Maintenance

The count_traget function recursively counts the occurrences of the target value in the tree. It handles three primary cases:

#### 1. Root with Left and Right Children:

If the tree has a root, a left child, and a right child, it performs an addition operation to sum the counts of occurrences of the value in the root, the left subtree, and the right subtree. This is done by calling count_target recursively on the root, left child, and right child. This maintains the invariant by ensuring each subtree is checked correctly.

#### 2. Root with One Child:

If the tree has only a root and one child, it performs an addition operation to sum the counts of occurrences of the value in the root and the single child. This ensures that the value count is accurate for trees with only one child.

#### 3. Root Only:

If the tree has only a root (no children), it uses an if statement to check if the root's value equals target value. If it does, it returns 1, otherwise, it returns 0. This case handles leaf nodes or trees with no children.
The + operation ensures that the function correctly counts the occurrences of the value in all parts of the tree, maintaining the invariant that the function correctly counts the value.

# Termination

The recursion terminates when it reaches a node without children (leaf node). At this point, the function returns 1 or 0 based on the value check at the node. As the recursive calls return, the + operations accumulate the counts, ensuring that the final result is the total count of the target value in the entire tree.
