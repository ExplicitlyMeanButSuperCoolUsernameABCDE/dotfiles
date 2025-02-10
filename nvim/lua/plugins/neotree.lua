return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Custom function to expand all nodes in Neo-tree
    local function expand_all_nodes(state)
      local function expand_recursive(node)
        if node.type == "directory" and not node:is_expanded() then
          require("neo-tree.sources.filesystem").toggle_node(state, node)
          for _, child in pairs(node.children or {}) do
            expand_recursive(child)
          end
        end
      end
      local root = state.tree:get_node()
      expand_recursive(root)
      require("neo-tree.ui.renderer").draw(state)
    end

    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      window = {
        width = 15,
        position = "right",
        mappings = {
          ["<space>"] = "toggle_node",
          ["<2-LeftMouse>"] = "open",
          ["Z"] = function(state)
            expand_all_nodes(state)
          end, -- Expand all nodes with 'Z'
        },
      },
    })

    -- Global keybinding to expand all folders in Neo-tree
    vim.api.nvim_set_keymap(
      "n",
      "<leader>e",
      ":lua require('neo-tree.command').execute({action = 'focus', source = 'filesystem', position = 'left'}); require('neo-tree.ui.renderer').expand_all()<CR>",
      { noremap = true, silent = true }
    )
  end,
}
