local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")


local evangelion = {
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣠⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀',
    '⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠿⠿⠿⣿⠿⠿⢛⠥⠲⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀',
    '⠻⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣏⡣⠀⡠⣪⣴⣶⣶⡵⡫⠃⠀⠀⠀⣠⣤⣤⣤⣤⣤⣤⢼⣀⠀⢹⢹⣿⣿⣿⡄⠀⠀⠀⠀⠀',
    '⠀⠈⠳⣝⠋⠲⡀⠀⠀⢀⣴⣿⣿⣿⣿⣯⣿⣶⣿⣿⣿⣿⣿⣶⣶⢶⣾⠿⠿⢻⣿⣷⣶⣶⠬⠍⠀⠆⠈⢏⢿⣿⣿⣿⡄⠀⠀⠀⠀',
    '⠀⠀⠀⠈⠳⣞⢿⣿⣿⡿⣻⣿⣿⡿⢟⣫⣿⣿⣿⣿⣿⣿⣯⣶⡿⢣⢀⣠⣴⣿⣿⣿⡿⠭⣉⠠⠼⠀⠀⠘⡞⣿⣿⣿⣿⡄⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠘⢦⡟⢹⣪⣿⣿⢟⣵⣿⣿⣿⣿⣿⣯⡿⡿⠋⠁⠀⠸⣿⣿⣿⣿⢟⣉⣖⣊⣀⣀⠀⠀⠀⣠⣿⡸⣿⣿⣿⣿⡄⠀⠀',
    '⠀⠀⠀⠀⠀⠀⣸⠞⠛⠉⠉⢀⠕⣾⡝⣿⢿⣟⠯⢓⣝⣥⣶⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⢳⢹⣿⣿⣿⣿⡄⠀',
    '⠀⠀⠀⠀⠀⠀⠉⠒⣏⠁⢲⣿⣦⣿⠷⣽⣡⣧⣶⣿⣿⣿⣿⣷⣾⣿⣭⣽⡟⣛⠿⠬⣛⠻⢿⣿⣿⢟⠯⠍⠀⠼⢧⢻⣿⣿⣿⣷⡀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠙⠓⣿⢻⠹⠟⣢⣱⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⣀⣴⣿⣿⣟⠕⠁⠀⠀⠀⠀⠈⢎⢿⣿⣿⣿⣷',
    '⠀⠀⠀⠀⠀⠀⠀⠀⢀⢎⠟⠮⠇⣼⣻⣫⣿⣿⣿⣿⣿⣿⢻⣿⣿⠟⢿⣿⣿⣿⣼⣿⣝⣻⠫⠁⠀⠀⠀⢀⣀⣀⣀⣘⡞⣿⣿⣿⣿',
    '⠀⠀⠀⠀⠀⠀⠀⠀⣸⠎⣀⢤⢶⣷⣿⠟⢻⣿⠛⣿⣿⡏⠀⣻⡍⠀⠀⠙⣿⣿⣿⣿⣿⣿⣾⣶⣿⣿⣿⣿⠿⠿⠛⠛⠹⡹⣿⣿⣿',
    '⠀⠀⠀⠀⠀⠀⠀⢀⡟⠋⡰⡵⡡⠋⢉⣁⡚⣿⣀⡈⠿⠁⠀⢿⠁⠀⠀⢠⣿⣿⣿⣿⣿⡿⠿⠛⠋⢉⣠⠤⠖⠒⠊⠉⠉⢳⢻⣿⣿',
    '⠀⠀⠀⠀⠀⠀⢀⢎⠃⢠⢫⡎⠉⠁⠀⠀⢸⣿⣿⣷⡄⠀⠀⠘⣧⠀⢠⣾⣿⡿⠛⠋⠁⣀⡤⣒⠯⠓⢲⣄⡀⡠⠖⠋⠉⠉⢧⢿⣿',
    '⠀⠀⠀⠀⠀⠀⡎⢸⠀⡮⠁⢁⠀⠀⠀⢀⣿⣿⣿⣿⣿⣷⣦⡀⠘⣧⡾⠋⠁⠀⣠⠔⢊⠕⣫⣴⣾⠗⠋⡠⣜⠁⣠⣶⣿⣿⣾⣮⡙',
    '⠀⠀⠀⠀⠀⡜⢀⣦⠴⠁⠀⠸⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣇⢠⡏⢀⣠⠖⠋⣠⢴⠃⣾⠿⢋⡥⠂⠁⠀⠘⠦⣜⣻⣿⠿⠛⠁⣼',
    '⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⡇⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢠⠞⣁⠔⠋⣀⡰⡩⠂⢠⠏⠀⠀⢀⡀⠀⢀⠀⠀⠀⣀⣤⣾⣿',
    '                                                 ',
    '░░░    ░░ ░░░░░░░  ░░░░░░  ░░    ░░ ░░ ░░░    ░░░',
    '▒▒▒▒   ▒▒ ▒▒      ▒▒    ▒▒ ▒▒    ▒▒ ▒▒ ▒▒▒▒  ▒▒▒▒',
    '▒▒ ▒▒  ▒▒ ▒▒▒▒▒   ▒▒    ▒▒ ▒▒    ▒▒ ▒▒ ▒▒ ▒▒▒▒ ▒▒',
    '▓▓  ▓▓ ▓▓ ▓▓      ▓▓    ▓▓  ▓▓  ▓▓  ▓▓ ▓▓  ▓▓  ▓▓',
    '██   ████ ███████  ██████    ████   ██ ██      ██',


}
-- Set header
local neovim_title = {
    ' __    __                             __              ',
    '|  \\  |  \\                           |  \\             ',
    '| ▓▓\\ | ▓▓ ______   ______  __     __ \\▓▓______ ____  ',
    '| ▓▓▓\\| ▓▓/      \\ /      \\|  \\   /  \\  \\      \\    \\ ',
    '| ▓▓▓▓\\ ▓▓  ▓▓▓▓▓▓\\  ▓▓▓▓▓▓\\\\▓▓\\ /  ▓▓ ▓▓ ▓▓▓▓▓▓\\▓▓▓▓\\',
    '| ▓▓\\▓▓ ▓▓ ▓▓    ▓▓ ▓▓  | ▓▓ \\▓▓\\  ▓▓| ▓▓ ▓▓ | ▓▓ | ▓▓',
    '| ▓▓ \\▓▓▓▓ ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓  \\▓▓ ▓▓ | ▓▓ ▓▓ | ▓▓ | ▓▓',
    '| ▓▓  \\▓▓▓\\▓▓     \\\\▓▓    ▓▓   \\▓▓▓  | ▓▓ ▓▓ | ▓▓ | ▓▓',
    ' \\▓▓   \\▓▓ \\▓▓▓▓▓▓▓ \\▓▓▓▓▓▓     \\▓    \\▓▓\\▓▓  \\▓▓  \\▓▓',
    '                                                      ',
    '                                                      ',
    '                                                      ',

}

dashboard.section.header.val = evangelion
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  > Explorer", "<leader>pv"),
    dashboard.button("q", "󰈆  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
