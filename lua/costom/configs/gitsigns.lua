require("gitsigns").setup {
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "󰍵" }, -- custom delete icon
    topdelete    = { text = "󰍵" },
    changedelete = { text = "│" },
    untracked    = { text = "┆" },
  },
}

