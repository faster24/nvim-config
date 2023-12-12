vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set("n" , "<Tab>" , "<Cmd>BufferLineCycleNext <CR>") -- move to next buffer
vim.keymap.set("n" , "<S-Tab>" , "<Cmd>BufferLineCyclePrev <CR>") -- move to previous buffer
vim.keymap.set("n" , "<leader>bd" , "<Cmd>bp|sp|bn|bd! <Cr>") -- close buffer 

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup {
            options = {
                buffer_close_icon = "x",
                modified_icon = "",
                close_icon = "X",
                show_close_icon = false,
                left_trunc_marker = "",
                right_trunc_marker = "",
                max_name_length = 14,
                max_prefix_length = 13,
                tab_size = 10,
                show_tab_indicators = true,
                indicator = {
                    style = "underline",
                },
                enforce_regular_tabs = false,
                view = "multiwindow",
                show_buffer_close_icons = true,
                separator_style = "thin",
                -- separator_style = "slant",
                always_show_bufferline = true,
                diagnostics = false,
                themable = true,
            },
        }
    end
}
