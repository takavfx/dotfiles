return {}
-- return {
--   {
--     "nvim-dap",
--     keys = {
--       {
--         "<leader>dc",
--         function()
--           require("dap").continue()
--         end,
--         desc = "Continue",
--       },
--       {
--         "<leader>dl",
--         function()
--           require("dap").run_last()
--         end,
--         desc = "Run Last",
--       },
--       {
--         "<leader>dd",
--         function()
--           require("dap").step_into()
--         end,
--         desc = "Step Into",
--       },
--       {
--         "<leader>ds",
--         function()
--           require("dap").step_over()
--         end,
--         desc = "Step Over",
--       },
--     },
--   },
--   {
--     "mfussenegger/nvim-dap",
--     config = function() end,
--   },
--   {
--     "mfussenegger/nvim-dap-python",
--     -- opts = function(_)
--     --   local venv = os.getenv("VIRTUAL_ENV")
--     --   local command = string.format("%s\\Script\\python", venv)
--     --   require("dap-python").setup(command)
--     -- end,
--   },
--   {
--     "rcarriga/nvim-dap-ui",
--     keys = {
--       {
--         "<leader>du",
--         function()
--           require("dapui").toggle()
--         end,
--         desc = "Toggle UI",
--       },
--     },
--   },
--   {
--     "EthanJWright/vs-tasks.nvim",
--     requires = {
--       { "nvim-lua/plenary.nvim" },
--       { "nvim-lua/popup.nvim" },
--       { "nvim-telescope/telescope.nvim" },
--     },
--     keys = {
--       {
--         "<leader>ta",
--         function()
--           require("telescope").extensions.vstask.tasks()
--         end,
--         desc = "Tasks",
--       },
--       {
--         "<Leader>ti",
--         function()
--           require("telescope").extensions.vstask.inputs()
--         end,
--         desc = "Inputs",
--       },
--       {
--         "<Leader>th",
--         function()
--           require("telescope").extensions.vstask.history()
--         end,
--         desc = "History",
--       },
--       {
--         "<Leader>tl",
--         function()
--           require("telescope").extensions.vstask.launch()
--         end,
--         desc = "Launch",
--       },
--     },
--   },
-- }
