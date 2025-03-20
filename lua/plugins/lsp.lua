return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = {
          cmd = { "nil" },
          settings = {
            ['nil'] = {
              testSetting = 42,
              formatting = {
                command = { "nixfmt" },
              },
            },
          },
        }
      }
    },
  }
}
