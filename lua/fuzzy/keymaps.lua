local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "\\", "<Nop>", opts)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

                            -- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

--Opening a new tab on to your left
keymap("n","<C-n>",":new<CR><C-w>L",opts)

-- Starts terminal using '\tt'
-- For Windows
-- keymap("n","<Leader>tt",":new term://powershell<CR><C-w>Li",opts)
-- For Linux
keymap("n","<Leader>tt",":new term://bash<CR><C-w>Li",opts)

-- python alias (,p runs python on script)
keymap("n",",p",":w<CR>:!python %<CR>",opts)

                            -- Insert --

                            -- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

                            -- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

                            -- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

                            -- Nvimtree --
keymap("n","<C-q>",":NvimTreeToggle<cr>",opts)

                            -- REPL --
keymap("n","<Leader>tp",":vert Repl python<CR><C-\\><C-n><C-w>L<C-w>h",opts)
keymap("n","<Leader>tx","<C-w>li<C-d><CR><CR>",opts) -- will have to press enter in the end 
vim.cmd "let g:zepl_default_maps = 0"
vim.cmd "nmap <Leader>s <Plug>ReplSend_Motion"
vim.cmd "vmap <Leader>s <Plug>ReplSend_Visual"
vim.cmd "nmap <cr> <Leader>sip"
vim.cmd "nmap <C-\\> Vgg<Leader>s"
