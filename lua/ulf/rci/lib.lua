---@class ulf.rci.lib
local M = {}

---@tag ulf.rci.lib
---@config { ["module"] = "ulf.rci.lib" }

---@brief [[
--- External librarie for `RCI`
---
--- Import external libraries only here and require this file. This makes it
--- easier to manage external depenendencies.
---@brief ]]

local ulf = {
	lib = require("ulf.lib"),
}

if vim then
	M.split = vim.split
	M.deepcopy = vim.deepcopy
	M.tbl_isempty = vim.tbl_isempty
	M.tbl_get = vim.tbl_get
	M.trim = vim.trim
	M.gsplit = vim.gsplit
else
	M.split = ulf.lib.string.split
	M.deepcopy = ulf.lib.table.deepcopy
	M.tbl_isempty = ulf.lib.table.tbl_isempty
	M.tbl_get = ulf.lib.table.tbl_get
	M.trim = ulf.lib.string.trim
	M.gsplit = ulf.lib.string.gsplit
end

M.dedent = ulf.lib.string.dedent
M.make_message = ulf.lib.error.make_message

return M
