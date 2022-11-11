local options={
number=true,                      -- Set Line Number
relativenumber=true,              -- Sets Relative Number
mouse='a',                        -- Use Mouse as well
clipboard='unnamedplus',          -- Copy/paste between vim and other programs. '"+y' then middlemouse
hlsearch=false,                   -- Removes Search highlights
errorbells=false,                 -- No Warnings
wrap=false,                       -- Single Line Space
cursorline=true,                  -- For the cursor line
guicursor="n-v-c:block-Cursor",   -- Always a Block cursor
autoindent=true,                  -- For Auto Indent
expandtab=true,                   -- Use spaces instead of tabs.
smarttab=true,                    -- Uses shiftwidth and tabstap to insert blanks when <Tab>
termguicolors=true,               -- You get a lot more color options 
showmode=false,                   -- We don't need to see things like --INSERT--
shiftwidth=4,                     -- One tab == four spaces.
tabstop=4                         -- One tab == four spaces.<Paste>
}

for k,v in pairs(options) do 
    vim.opt[k]=v
end

