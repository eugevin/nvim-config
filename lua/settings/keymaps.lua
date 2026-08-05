local keymap = vim.keymap
local builtin = require("telescope.builtin")

-- Base
keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Exit insert mode" })
keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true, desc = "File explorer" })

-- Telescope
keymap.set("n", "<leader>ff", builtin.find_files, { noremap = true, silent = true, desc = "Find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true, desc = "Live grep" })
keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true, silent = true, desc = "Buffers" })
