# Initialization

We begin by evaluating the structure of the tree with a case expression. For a node without any children, the depth is defined as 1. This serves as the base case, ensuring that an isolated node or an empty tree returns a depth of 1, which aligns with the definition of tree depth.

# Maintenance:

The max_depth function recursively calculates the depth of the tree. It handles three primary cases:

#### 1. Root with Left and Right Children:

If the tree has a root, a left child, and a right child, it calls max_depth recursively on both the left and right children, computes their depths, and returns the max(depth of left subtree, depth of right subtree) incremented by one. This maintains the invariant by ensuring each subtree's depth is calculated correctly.

#### 2. Root with One Child:

If the tree has only a root and one child, it calls max_depth recursively on the left child and returns 1 + depth of left subtree. This ensures that the depth calculation is accurate for trees missing the right child.

#### 3. Root Only:

If the tree has only a root, it returns 1, which is the correct depth for a tree with no children.

The max helper function ensures that we always take the larger depth between the left and right subtrees, maintaining the invariant that the depth calculation is correct for each recursive step.

# Termination:

The recursion terminates when it reaches nodes without children (leaf nodes). At this point, the function returns the base case value (1 or the appropriate depth). As the recursive calls return, the depth values are accumulated correctly, ensuring that the final result represents the maximum depth of the entire tree.
