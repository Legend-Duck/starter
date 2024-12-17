local M = {}

M.ext = function(filename, tbl)
  local path = "nvchad.configs." .. filename
  return vim.tbl_deep_extend("force", require(path), tbl)
end

return M
