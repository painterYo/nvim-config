-- Colorschemes:
    -- default
    -- slate
    -- tokyonight
    -- darkplus         *vscode-like

local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("Error: colorscheme '" .. colorscheme .. "' not found.")
    return
end

-- Load colorscheme
-- vim.cmd "colorscheme slate"
