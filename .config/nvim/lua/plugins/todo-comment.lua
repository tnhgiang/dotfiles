-- import comment plugin safely
local setup, todo_comment = pcall(require, "todo-comments")
if not setup then
	return
end

-- enable comment
todo_comment.setup()
