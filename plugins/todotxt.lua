return {
  {
    "arnarg/todotxt.nvim",
    requires = { "MunifTanjim/nui.nvim" },
    lazy = false,
    config = function()
      local todo_file = os.getenv "TODO_FILE"
      if todo_file then
        require("todotxt-nvim").setup {
          todo_file = os.getenv "TODO_FILE",
          -- Keymap used in sidebar split
          keymap = {
            quit = "q",
            toggle_metadata = "m",
            delete_task = "dd",
            complete_task = "<tab>",
            edit_task = "ee",
          },
        }
      end
    end,
  },
}
