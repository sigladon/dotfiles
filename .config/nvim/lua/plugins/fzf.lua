return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    { 
      "<leader>ff",
      function() require('fzf-lua').files() end,
      desc="Fzf in cwd"
    },
    { 
      "<leader>fg",
      function() require('fzf-lua').live_grep() end,
      desc="Grep in cwd"
    },
    { 
      "<leader>fr",
      function() require('fzf-lua').git_files() end,
      desc="Fzf in git repository"
    },
    { 
      "<leader>rf",
      function() require('fzf-lua').resume() end,
      desc="Resume finder"
    },
    { 
      "<leader><C-p>f",
      function() require('fzf-lua').files({ cwd=vim.fn.stdpath("config") }) end,
      desc="Find with fzf in Neovim Configuration files"
    },
    { 
      "<leader><C-p>g",
      function() require('fzf-lua').live_grep({ cwd=vim.fn.stdpath("config") }) end,
      desc="Find with grep in Neovim Configuration files"
    }
  }

}
