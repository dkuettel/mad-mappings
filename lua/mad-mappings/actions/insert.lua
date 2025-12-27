local n = require("mad-mappings").make_action_n
local v = require("mad-mappings").make_action_v

-- NOTE mappings seem to abort if one step fails, that can happen especially with "h" if you cant move to the right
-- but using <cmd>normal! h<enter> doesnt seem to count as failure, and in these cases it usually doesnt matter if you cant move

return {
    before_cursor = n { "insert before block cursor", rhs = "i" },
    after_after = n { "insert after block cursor", rhs = "a" },
    before_word = n { "insert at beginning of word", rhs = "lbi" },
    before_WORD = n { "insert at beginning of WORD", rhs = "lBi" },
    after_word = n { "insert at end of word", rhs = "<cmd> normal! h<enter>ea" },
    after_WORD = n { "insert at end of WORD", rhs = "<cmd> normal! h<enter>Ea" },
    end_of_line = n { "insert at end of line", rhs = "A" },
    beginning_of_line_text = n { "insert at beginning of line text", rhs = "^i" },
    beginning_of_line = n { "insert at beginning of line", rhs = "0i" },
    above_cursor = n { "insert new line above", rhs = "O" },
    line_at_top = n { "insert new line at the top", rhs = "ggO" },
    below_cursor = n { "insert new line below", rhs = "o" },
    line_at_bottom = n { "insert new line at the bottom", rhs = "Go" },
    split_line_before_cursor = n { "insert new line in-between left of cursor", rhs = "i<enter><esc>O" },
    split_line_after_cursor = n { "insert new line in-between right of cursor", rhs = "a<enter><esc>O" },
    last_insert = n { "insert at last insert location", rhs = "gi" },
    new_line_below = n { "add new line below", rhs = "o<esc>k" },
    new_line_above = n { "add new line above", rhs = "O<esc>j" },
    change_visual = v { "insert over visual", rhs = "c" },
    replace = n { "enter replace mode", rhs = "R" },
}
