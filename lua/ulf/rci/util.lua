local M = {}

---@tag ulf.rci.util
---@config { ["module"] = "ulf.rci.util" }

---@brief [[
--- Utilities for `ConfKit`
---@brief ]]

---comment
---@param t table
---@param name string
---@return boolean
local function _is_type(t, name)
	local mt = getmetatable(t)
	if mt and mt.__class then
		return mt.__class.name and mt.__class.name == name
	end
	return false
end

return M
