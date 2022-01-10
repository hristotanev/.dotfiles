local function mode()
  local mode_map = {
    ['n'] = 'NORMAL',
    ['no'] = 'N·Operator Pending',
    ['v'] = 'VISUAL',
    ['V'] = 'V·Line',
    ['^V'] = 'V·Block',
    ['s'] = 'Select',
    ['S'] = 'S·Line',
    ['^S'] = 'S·Block',
    ['i'] = 'INSERT',
    ['ic'] = 'INSERT',
    ['ix'] = 'INSERT',
    ['R'] = 'Replace',
    ['Rv'] = 'V·Replace',
    ['c'] = 'COMMAND',
    ['cv'] = 'Vim Ex',
    ['ce'] = 'Ex',
    ['r'] = 'Prompt',
    ['rm'] = 'More',
    ['r?'] = 'Confirm',
    ['!'] = 'Shell',
    ['t'] = 'TERMINAL'
  }

  return "[" .. mode_map[vim.api.nvim_get_mode()['mode']] .. "]"
end

local S = {}
function S.StatusLine()
  local statusline = ""
  local components = {mode(), " ", "%-F"}
  for _, v in pairs(components) do
    statusline = statusline .. v
  end

  return statusline
end

return S
