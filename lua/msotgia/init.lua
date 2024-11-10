-- Order is important 

if not require("msotgia.environments").should_setup then return end

require("msotgia.native.options")
require("msotgia.plugins")
require("msotgia.native")
require("msotgia.keymaps").init()