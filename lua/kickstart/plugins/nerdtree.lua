-- NERDTree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'preservim/nerdtree',
  cmd = { "NERDTreeToggle", "NERDTreeFocus" },
  keys = {
    { '<leader>n', ':NERDTreeToggle<CR>', desc = 'NERDTree reveal reveal', silent = true },
    {
    -- Open NERDTree if its not open, then reveal current file
    "<leader>b",
    function()
      if vim.fn.exists("t:NERDTreeBufName") == 0 then
        vim.cmd("NERDTree")
      end
      vim.cmd("NERDTreeFind")
    end,
    desc = "Open NERDTree at current file",
    },
  },

  init = function()
    vim.g.NERDTreeShowHidden = 1
    vim.g.NERDTreeMinimalUI = 1
    vim.g.NERDTreeAutoDeleteBuffer = 1
  end,
}
