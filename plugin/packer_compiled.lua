-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/faadhilhakim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/faadhilhakim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/faadhilhakim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/faadhilhakim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/faadhilhakim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["blue-moon"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/blue-moon"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  edge = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "require('plugins.galaxyline')" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  gloombuddy = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/gloombuddy"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  hop = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/hop"
  },
  indentLine = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lua-dev.nvim"] = {
    config = { "require('plugins.lua-dev')" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/lua-dev.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  neon = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/neon"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nord.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-reload"] = {
    config = { "require('plugins.reload')" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-reload"
  },
  ["nvim-treesitter"] = {
    config = { "require('plugins.treesitter')" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["one-nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/one-nvim"
  },
  onebuddy = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["space-nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/space-nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "require('plugins.telescope')" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "require('plugins.illuminate')" },
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/Users/faadhilhakim/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
require('plugins.illuminate')
time([[Config for vim-illuminate]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
require('plugins.galaxyline')
time([[Config for galaxyline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('plugins.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: lua-dev.nvim
time([[Config for lua-dev.nvim]], true)
require('plugins.lua-dev')
time([[Config for lua-dev.nvim]], false)
-- Config for: nvim-reload
time([[Config for nvim-reload]], true)
require('plugins.reload')
time([[Config for nvim-reload]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('plugins.treesitter')
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
