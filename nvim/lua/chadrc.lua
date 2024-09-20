-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "wombat",
}

-- Open docs.rs/<crate>
M.docs = function(args)
  local doc_url = "https://docs.rs/" .. args.args

  vim.fn.jobstart({"xdg-open", doc_url})  -- Linux
  -- vim.fn.jobstart({"open", doc_url})   -- MacOS
  -- vim.fn.jobstart({"start", doc_url})  -- Windows
end

vim.api.nvim_create_user_command("Docs", M.docs, {
  nargs = 1,
})

return M
