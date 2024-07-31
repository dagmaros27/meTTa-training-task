# Initialization

We begin by evaluating the structure of the tree with a case expression. For a single node tree, it checks if the root value matches the target value. If it does, it returns True or else it returns False. This forms the base case, ensuring that a leaf node is correctly checked against the target value.

# Maintenance

The search_value function recursively checks for the existence of the targeted value in the tree. It handles three primary cases:

#### 1. Root with Left and Right Children

If the binary tree has a root, a left child, and a right child, it performs an or operation to check if the value exists in the root, the left subtree, or the right subtree. This is done by calling search_value recursively on the root, left child, and right child. This maintains the invariant by ensuring each subtree is checked correctly.

#### 2. Root with One Child

If the tree has only a root and one child (either left or right), it performs an or operation to check if the value exists in the root or the single child. This ensures that the value check is accurate for trees with only one child.

#### 3. Root Only

If the tree has only a root (no children), it uses an if statement to check if the root's value equals targeted value. If it does, it returns True or else it returns False. This case handles leaf nodes or trees with no children.
The or operation ensures that the function returns True if the value exists in any part of the tree, maintaining the invariant that the function correctly checks for the existence of the value.

# Termination

The recursion terminates when it reaches a node without children (leaf node). At this point, the function returns True or False based on the value check at the node. As the recursive calls return, the or operations accumulate the results, ensuring that if any subtree contains the value, the final result is True. If none of the subtrees contain the value, the final result is False.
