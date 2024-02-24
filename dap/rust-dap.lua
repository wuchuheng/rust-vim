local M = {}

function M.setup()
  local rust_server_name = "rust-analyzer"
  local is_installed= require("mason-registry").is_installed(rust_server_name)
  -- Example usage
  if not is_installed then
    -- Execute MasonInstall without producing output that triggers the prompt
    vim.api.nvim_command("silent! MasonInstall " .. rust_server_name)
  end
end

return M
