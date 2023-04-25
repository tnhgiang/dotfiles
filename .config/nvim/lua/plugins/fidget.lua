-- import fidget plugin safely
local status, fidget = pcall(require, "fidget")
if not status then
  return
end

-- configure/enable gitsigns
fidget.setup()
