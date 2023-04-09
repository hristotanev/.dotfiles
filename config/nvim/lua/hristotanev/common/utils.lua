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

local function get_output_buf_win(current_window)
  local target_window = 0
  local windows = api.nvim_tabpage_list_wins(0)
  for _, window in ipairs(windows) do
    if window ~= current_window then
      target_window = window
    end
  end

  return target_window
end

local function exec_cmd_in_buf(command)
  local output_buf = api.nvim_create_buf(false, true)
  local append_data = function (_, data)
    if data then
      api.nvim_buf_set_lines(output_buf, -1, -1, false, data)
    end
  end

  api.nvim_buf_set_lines(output_buf, 0, -1, false, {"build output:"})
  vim.fn.jobstart(command, {
    stdout_buffered = true,
    on_stdout = append_data,
    on_stderr = append_data
  })

  local current_window = api.nvim_get_current_win()
  close_other_windows(current_window)

  vim.cmd("vert belowright sb")

  api.nvim_win_set_buf(get_output_buf_win(current_window), output_buf)
  api.nvim_win_set_cursor(current_window, api.nvim_win_get_cursor(0))
end

M.exec_cmd_in_buf = exec_cmd_in_buf

return M
