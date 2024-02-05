-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- increment /decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--replace words in file
keymap.set("n", "<leader>rn", ":IncRename ")

keymap.set("n", "<A-k>", ":m .-2<cr>==") -- alt + j move line down
keymap.set("n", "<A-j>", ":m .+1<cr>==")

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

-- save file leader + w LazyVim
-- keymap.set("n", "<leader>w", ":w<CR>")
map("n", "<leader>w", "<cmd>w<cr><esc>", { desc = "Save", remap = true })
