-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/Reji/.cache/nvim/packer_hererocks/2.1.1696795921/share/lua/5.1/?.lua;/home/Reji/.cache/nvim/packer_hererocks/2.1.1696795921/share/lua/5.1/?/init.lua;/home/Reji/.cache/nvim/packer_hererocks/2.1.1696795921/lib/luarocks/rocks-5.1/?.lua;/home/Reji/.cache/nvim/packer_hererocks/2.1.1696795921/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/Reji/.cache/nvim/packer_hererocks/2.1.1696795921/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  neorg = {
    config = { "\27LJ\2\nË\3\0\0\a\0\24\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\22\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0035\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0035\4\17\0005\5\16\0=\5\f\4=\4\18\0035\4\20\0005\5\19\0=\5\f\4=\4\21\3=\3\23\2B\0\2\1K\0\1\0\tload\1\0\0\20core.completion\1\0\0\1\0\1\vengine\rnvim-cmp\25core.export.markdown\1\0\0\1\0\1\14extension\amd\17core.summary\16core.export\16core.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\nnotes\22~/Me/neorg_notes/\16brain_storm\"~/Me/neorg_notes/brain_storm/\21core.ui.calendar\31core.integrations.nvim-cmp\19core.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/Reji/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["oil.nvim"] = {
    loaded = true,
    path = "/home/Reji/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/Reji/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\nË\3\0\0\a\0\24\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\22\0005\3\3\0004\4\0\0=\4\4\0034\4\0\0=\4\5\0034\4\0\0=\4\6\0034\4\0\0=\4\a\0035\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0035\4\17\0005\5\16\0=\5\f\4=\4\18\0035\4\20\0005\5\19\0=\5\f\4=\4\21\3=\3\23\2B\0\2\1K\0\1\0\tload\1\0\0\20core.completion\1\0\0\1\0\1\vengine\rnvim-cmp\25core.export.markdown\1\0\0\1\0\1\14extension\amd\17core.summary\16core.export\16core.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\nnotes\22~/Me/neorg_notes/\16brain_storm\"~/Me/neorg_notes/brain_storm/\21core.ui.calendar\31core.integrations.nvim-cmp\19core.concealer\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
