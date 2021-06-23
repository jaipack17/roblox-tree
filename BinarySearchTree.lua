local Node = require(script.Node);

Tree = {};
Tree.__index = Tree;


function Tree.new() return setmetatable({ root = nil }, Tree) end

function Tree:insert(element)
	local node = Node.new(element);
	
	if (self.root == nil) then
		self.root = node;
	else
		insertNode(self.root, node)
	end
end

function insertNode(node, newNode)
	if newNode.data < node.data then
		node.left = newNode;
		if node.left == nil then
			node.left = newNode; 
		else
			insertNode(node.left, newNode);
		end
	else
		if node.right == nil then
			node.right = newNode;
		else
			insertNode(node.right, newNode);
		end
	end
	
end

function Tree:remove(element)
	self.root = removeNode(self.root, element)
end

function removeNode(node, element)
	if node == nil then
		return nil;
	elseif element < node.data then
		node.left = removeNode(node.left, element);
		return node;
	elseif element > node.data then
		node.right = removeNode(node.right, element);
		return node;
	else
		if node.left == nil and node.right == nil then
			node = nil;
			return node;
		end
		
		if node.left == nil then
			node = node.right;
			return node;
		elseif node.right == nil then
			node = node.left;
			return node;
		end
	end
end

function Tree:isEmpty()
	if self.root then
		return false;
	end
	
	return true;
end

return Tree;
