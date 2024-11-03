local M = {}

function M.wrap_word_in_single_quotes()
    main("'", "'")
end

function M.wrap_word_in_quotes()
    main('"', '"')
end

function M.wrap_word_in_parentheses()
    main('(', ')')
end

function main(start_char, end_char)
    -- isso aqui é pra sair do modo visual
    -- se não fizer isso, ele vai voltar a coluna e a linha da seleção anterior (?????)
    -- ent isso aqui tira a seleção e faz a mesma seleção novamente, assim atualizando os
    -- valores que voltam da api do vim
	local ESC_FEEDKEY = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
	vim.api.nvim_feedkeys(ESC_FEEDKEY, "n", true)
	vim.api.nvim_feedkeys("gv", "x", false)
	vim.api.nvim_feedkeys(ESC_FEEDKEY, "n", true)

    local _, start_row, start_col, _ = unpack(vim.fn.getpos("'<"))
    local _, end_row, end_col, _ = unpack(vim.fn.getpos("'>"))

    if start_row == end_row then
        local line = vim.fn.getline(start_row)
        local selected_text = line:sub(start_col, end_col)

        local new_text = start_char .. selected_text .. end_char
        vim.fn.setline(start_row, line:sub(1, start_col - 1) .. new_text .. line:sub(end_col + 1))
    else
        print("Selection spans multiple lines; please select a single word or phrase.")
    end
end

M.teste = M.wrap_word_in_quotes

-- Return the plugin table
return M
