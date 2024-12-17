-- local cmp = require("cmp")

local options = {
  completion = {
    completeopt = "menu,menuone,noselect",
  },
  -- preselect = cmp.PreselectMode.None,
}

return require("utils").ext("cmp", options)
