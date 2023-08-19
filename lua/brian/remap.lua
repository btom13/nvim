vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set('n', '<Tab>', '<C-W>w');
vim.keymap.set('n', '<S-Tab>', '<C-W>W');

vim.keymap.set('n', '<leader>ts', function()
  local file = vim.fn.expand('%:p')
  if vim.fn.expand('%:e') ~= 'ts' and vim.fn.expand('%:e') ~= 'js'
      and vim.fn.expand('%:e') ~= 'py' then
    return
  end
  vim.cmd('w')
  if vim.fn.expand('%:e') == 'ts' then
    vim.cmd('!echo; ts-node-esm ' .. file)
  end
  if vim.fn.expand('%:e') == 'js' then
    vim.cmd('!echo; node ' .. file)
  end
  if vim.fn.expand('%:e') == 'py' then
    vim.cmd('!echo; python3 ' .. file)
  end
end)

-- types console.log() if current file is .js or .ts or .svelte
-- types print() if current file is .py
vim.keymap.set('n', "<leader>l", function()
  if vim.fn.expand('%:e') ~= 'js' and vim.fn.expand('%:e') ~= 'ts'
      and vim.fn.expand('%:e') ~= 'svelte' and vim.fn.expand('%:e') ~= 'py' then
    return
  end
  if vim.fn.expand('%:e') == 'js' or vim.fn.expand('%:e') == 'ts' or vim.fn.expand('%:e') == 'svelte' then
    vim.cmd('normal oconsole.log()')
  end
  if vim.fn.expand('%:e') == 'py' then
    vim.cmd('normal oprint()')
  end
  vim.cmd('startinsert')
end)


vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<leader>r", ":w<CR>")

vim.keymap.set("n", "'", "o<Esc>k")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>ns", "<C-w>s")
vim.keymap.set("n", "<leader>nv", "<C-w>v")
vim.keymap.set("n", "<leader>nd", "<C-w>q")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
