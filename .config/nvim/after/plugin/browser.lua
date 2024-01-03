-- default values for the setup
require('browse').setup({
  -- search provider you want to use
  provider = "google", -- duckduckgo, bing

  -- either pass it here or just pass the table to the functions
  -- see below for more
  bookmarks = {
["Coding_Platforms"] = {
      ["Leetcode"] = "https://leetcode.com/problemset/",
      ["AOC"] = "https://adventofcode.com/",
      ["Codeforces"] = "https://codeforces.com/problemset",
  },
      ["Github"] = "https://github.com/Vinay0022?tab=repositories",
  },
  icons = {
      bookmark_alias = "->", -- if you have nerd fonts, you can set this to ""
      bookmarks_prompt = "", -- if you have nerd fonts, you can set this to "󰂺 "
      grouped_bookmarks = "->", -- if you have nerd fonts, you can set this to 
  }
})
vim.keymap.set("n", "<leader>b", function()
  require("browse").browse({ bookmarks = bookmarks })
end)

vim.keymap.set("n","<leader>s",function()require("browse").input_search()
end)
