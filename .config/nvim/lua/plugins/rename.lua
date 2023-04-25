-- import inc_rename plugin safely
local status, rename = pcall(require, "inc_rename")
if not status then
	return
end

-- configure/enable inc_rename
rename.setup({
	cmd_name = "",
})
