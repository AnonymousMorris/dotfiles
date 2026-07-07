local o = vim.opt
vim.g.mapleader = ' '          -- space is the leader key
o.expandtab = true             -- spaces, not tabs
o.shiftwidth = 4               -- 2 spaces per indent level
o.number = true                -- absolute number on the cursor line, relative elsewhere
o.relativenumber = true        -- relative line numbers for fast jumps
o.ignorecase = true            -- search is case-insensitive by default
o.smartcase = true             -- case-sensitive only if i type a capital
o.clipboard = 'unnamedplus'    -- share the system clipboard
o.scrolloff = 16               -- keep cursor away from the screen edge
o.splitright = true            -- open vertical splits to the right and focus them
o.undofile = true              -- persistent undo across sessions
o.termguicolors = true         -- use theme-provided truecolor highlights
o.guicursor = table.concat({
  "n-v-c:block-Cursor/lCursor",
  "i-ci-ve:ver25-Cursor/lCursor",
  "r-cr-o:hor20-Cursor/lCursor",
  "t:block-blinkon500-blinkoff500-TermCursor",
  "sm:block-blinkwait175-blinkoff150-blinkon175",
}, ",")
