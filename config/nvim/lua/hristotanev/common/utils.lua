local M = {}
local api = vim.api

local function close_other_windows(current_window)
	local windows = api.nvim_tabpage_list_wins(0)
	for _, window in ipairs(windows) do
		if window ~= current_window then
			api.nvim_win_close(window, true)
		end
	end
end

local function exec_cmd_in_term(command)
	local current_window = api.nvim_get_current_win()
	local current_cursor_pos = api.nvim_win_get_cursor(0)
	close_other_windows(current_window)

	vim.cmd("rightbelow vsplit term://" .. vim.fn.join(command, " "))

	api.nvim_win_set_cursor(current_window, current_cursor_pos)
end

M.exec_cmd_in_term = exec_cmd_in_term

return M
