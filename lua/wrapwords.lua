local mainlogic = require("plugin.main")

local function setup()
    vim.api.nvim_create_user_command("Teste", mainlogic.teste, {})
    vim.api.nvim_create_user_command("Wrapwordsdoublequotes", mainlogic.wrap_word_in_quotes, {})
    vim.api.nvim_create_user_command("Wrapwordssinglequotes", mainlogic.wrap_word_in_single_quotes, {})
    vim.api.nvim_create_user_command("Wrapwordsparentheses",   mainlogic.wrap_word_in_parentheses, {})

end

return { setup = setup }
