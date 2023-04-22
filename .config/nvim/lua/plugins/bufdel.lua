-- import bufdel plugin safely
local status, bufdel = pcall(require, "bufdel")
if not status then
	return
end

bufdel.setup({
	next = "tabs",
	quit = true, -- quit Neovim when last buffer is closed
})
