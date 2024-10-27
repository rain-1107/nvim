local notify = require("notify")
notify.setup({
    render = "simple",
    background_colour = "#000000"
})

vim.notify = notify
