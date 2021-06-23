Node = {};
Node.__index = Node;
function Node.new(data)	
	local self = setmetatable({}, Node);

	self.data = data;
	self.left = nil;
	self.right = nil;

	return self;
end

return Node;
