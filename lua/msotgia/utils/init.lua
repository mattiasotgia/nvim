local M = require("msotgia.utils.lua")

M = M.merge(M, require("msotgia.utils.chars"))
M = M.merge(M, require("msotgia.utils.neovim"))
M = M.merge(M, require("msotgia.utils.git"))

return M
