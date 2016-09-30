-- Utilities.lua
-- by trioxide

local Utilities = {};

function Utilities.create(class)
	assert(type(class) == "string", "Not a valid class!");
	return function(properties)
		assert(type(properties) == "table", "Properties must be given in a table.")

		local object = Instance.new(class);
		for property, value in pairs(properties) do
			pcall(function()
				object[property] = value;
			end)
		end

		return object;
	end
end

function Utilities.print(...)
	print("> ", ...);
end

return Utilities;