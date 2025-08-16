vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.list = true
vim.opt.termguicolors = true

vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
})

local osc52 = require('vim.ui.clipboard.osc52')
vim.g.clipboard = {
  name = 'osc52',
  copy = { ['+'] = osc52.copy, ['*'] = osc52.copy },
  paste = { ['+'] = osc52.paste, ['*'] = osc52.paste },
}

