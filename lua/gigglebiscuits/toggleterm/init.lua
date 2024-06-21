
local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end

require("toggleterm").setup({
  size = 20,
  open_mapping = [[C-\\]],
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  direction = 'float'
})



--vim.cmd [[let &shell = '"C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe"' ]]

--vim.keymap.set('n','', ':ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop<CR>')
