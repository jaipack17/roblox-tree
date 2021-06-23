# Roblox Tree 🌳
Binary Search Tree Module for Roblox Studio

A binary search tree, also called an ordered or sorted binary tree, is a rooted binary tree whose internal nodes each store a key greater than all the keys in the node's left subtree and less than those in its right subtree. 

Example: 

```
       15
       /\
      1  4
     /    \ 
    3      10
     \     /\
      1   5  9

```

Clone the repository

Place ModuleScript "Node" inside ModuleScript "BinarySearchTree" and place the module inside ReplicatedStorage.

Require the module - 

```lua
local Tree = require(game:GetService("ReplicatedStorage").BinarySearchTree);
```

Example -

```
local Tree = require(game:GetService("ReplicatedStorage").BinarySearchTree)

local tree1 = Tree.new(); -- declaring bst

print(tree1:isEmpty()) -- is the tree empty? (boolean)

tree1:insert(1); -- insert value
tree1:insert(6);
tree1:insert(1);
tree1:insert(8);
tree1:insert(3);

tree1:remove(8); -- remove value

print(tree1);
```
