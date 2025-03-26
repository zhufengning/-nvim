return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = {
          mason = false,
          cmd = { "nil" },
          settings = {
            ["nil"] = {
              testSetting = 42,
              formatting = {
                command = { "nixfmt" },
              },
            },
          },
        },
        yamlls = {
          mason = false,
          on_attach = function(client, buffer)
            if client.name == "yamlls" then
              client.server_capabilities.documentFormattingProvider = true
            end
          end,
          cmd = { "yaml-language-server", "--stdio" },
          settings = {
            yaml = {
              format = {
                enable = true,
              },
            },
          },
        },
        lemminx = { mason = false },
        jdtls = { mason = false },
        bashls = { mason = false },
      },
    },
  },
}
