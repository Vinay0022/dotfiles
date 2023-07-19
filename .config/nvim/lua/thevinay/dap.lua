-- Configure dap
local dap = require('dap')

require('dapui').setup()

-- Set dap-ui configurations
require('dapui').setup({
    icons = {
        expanded = '▾',
        collapsed = '▸',
    },
    mappings = {
        expand = '<CR>',
        open = 'o',
        remove = 'd',
        edit = 'e',
        repl = 'r',
    },
    sidebar = {
        elements = {
            'scopes',
            'breakpoints',
            'stacks',
        },
        width = 40,
        position = 'left',
    },
    tray = {
        elements = {
            'repl',
        },
        height = 10,
        position = 'bottom',
    },
    floating = {
        max_width = nil,
        max_height = nil,
    },
})







--adapter config for python 
dap.adapters.python = {
  type = 'executable',
  command = '/usr/bin/python3',
  args = { '-m', 'debugpy.adapter' },
}

--python config
dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch Python File',
    program = '${file}',
    pythonPath = function()
      return vim.fn.exepath('/usr/bin/python3')
    end,
  },
}

-- Define your custom keybindings here
vim.api.nvim_set_keymap('n', '<C-c>', ':lua require("dap").toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-r>', ':lua require("dap").continue()<CR>', { noremap = true, silent = true })
-- Add more keybindings as needed

-- Add keybindings for dap-watch
vim.api.nvim_set_keymap('n', '<C-x>', ':lua require("dapui").eval()<CR>', { noremap = true, silent = true })

--Add keybinding for opening and closing dap ui
vim.api.nvim_set_keymap('n', '<C-q>', ':lua require("dapui").open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':lua require("dapui").close()<CR>', { noremap = true, silent = true })

-- Add keybindings for dap-breakpoint
vim.api.nvim_set_keymap('n', '<C-y>', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-o>', ':lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Logpoint message: "))<CR>', { noremap = true, silent = true })

