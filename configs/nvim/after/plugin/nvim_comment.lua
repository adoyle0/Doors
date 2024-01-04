-- ## Usage
--
-- Either use the command `CommentToggle`, e.g.:
--
-- - `CommentToggle` comment/uncomment current line
-- - `67,69CommentToggle` comment/uncomment a range
-- - `'<,'>CommentToggle` comment/uncomment a visual selection
--
-- Or use the default mappings:
--
-- - `gcc` comment/uncomment current line, this does not take a count, if you want
--   a count use the `gc{count}{motion}`
-- - `gc{motion}` comment/uncomment selection defined by a motion (as lines are
--   commented, any comment toggling actions will default to a linewise):
--   - `gcip` comment/uncomment a paragraph
--   - `gc4w` comment/uncomment current line
--   - `gc4j` comment/uncomment 4 lines below the current line
--   - `dic` delete comment block
--   - `gcic` uncomment commented block

require('nvim_comment').setup(
    {
        -- Linters prefer comment and line to have a space in between markers
        marker_padding = true,
        -- should comment out empty or whitespace only lines
        comment_empty = true,
        -- trim empty comment whitespace
        comment_empty_trim_whitespace = true,
        -- Should key mappings be created
        create_mappings = true,
        -- Normal mode mapping left hand side
        line_mapping = "gcc",
        -- Visual/Operator mapping left hand side
        operator_mapping = "gc",
        -- text object mapping, comment chunk,,
        comment_chunk_text_object = "ic",
        -- Hook function to call before commenting takes place
        hook = nil
    }
)

vim.keymap.set("v", "<C-/>", "'<,'>CommentToggle")
vim.keymap.set("n", "<C-/>", "CommentToggle")
