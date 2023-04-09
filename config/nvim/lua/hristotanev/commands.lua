local api = vim.api
local exec_cmd_in_buf = require("hristotanev.common.utils").exec_cmd_in_buf

api.nvim_create_user_command("Build", function ()
  local buf_name = api.nvim_buf_get_name(0)

  local path_dict = vim.split(buf_name, "/")
  local file_name = path_dict[#path_dict]

  if file_name == "main.rs" then
    exec_cmd_in_buf({"cargo", "build"})
  end
end, {})
