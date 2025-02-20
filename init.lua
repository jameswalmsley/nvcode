local base_dir = vim.env.LUNARVIM_BASE_DIR
  or (function()
    local init_path = debug.getinfo(1, "S").source
    return init_path:sub(2):match("(.*[/\\])"):sub(1, -2)
  end)()

if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:prepend(base_dir)
end

require("lvim.bootstrap"):init(base_dir)

local utils = require "lvim.utils"
require("lvim.config"):load(utils.join_paths(base_dir, 'lua/distro/config.lua'))
require("lvim.config"):load()

local plugins = require "lvim.plugins"
local distro_plugins = require "distro.plugins"

require("lvim.plugin-loader").load { plugins, distro_plugins, lvim.plugins }

require("lvim.core.theme").setup()

local Log = require "lvim.core.log"
Log:debug "Starting LunarVim"

local commands = require "lvim.core.commands"
commands.load(commands.defaults)
