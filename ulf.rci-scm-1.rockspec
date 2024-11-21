---@diagnostic disable:lowercase-global

rockspec_format = "3.0"
package = "ulf.rci"
version = "scm-1"
source = {
	url = "https://github.com/lua-ulf/ulf.rci/archive/refs/tags/scm-1.zip",
}

description = {
	summary = "ulf.rci is the core library for the ULF framework.",
	labels = { "lua", "neovim", "ulf" },
	homepage = "http://github.com/lua-ulf/ulf.rci",
	license = "MIT",
}

dependencies = {
	"lua >= 5.1",
	"lpeg",
}
build = {
	type = "builtin",
	modules = {},
	copy_directories = {},
	platforms = {},
}
test_dependencies = {
	"busted",
	"busted-htest",
	"luacov",
	"luacov-html",
	"luacov-multiple",
	"luacov-console",
	"luafilesystem",
}
test = {
	type = "busted",
}
