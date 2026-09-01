-- ~/.config/nvim/lsp/pylsp.lua
return {
  cmd = { 'pylsp' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    '.git',
  },
  settings = {
    pylsp = {
      plugins = {
        -- built-in plugins; tweak to taste
        pycodestyle = {
          enabled = true,
          maxLineLength = 100,
        },
        pyflakes = { enabled = true },
        mccabe = { enabled = false },
        -- autopep8/yapf are the built-in formatters; disable if you format with something else (e.g. ruff/black via conform.nvim)
        autopep8 = { enabled = true },
        yapf = { enabled = false },
      },
    },
  },
}
