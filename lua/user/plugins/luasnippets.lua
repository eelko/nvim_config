-- luasnip.lua

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets('lua', {
  s('hello', {
    t 'print("Hello world...")',
  }),
})
-- return an empty table for lazy to be happy
return {}
