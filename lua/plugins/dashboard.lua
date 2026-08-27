return {
  "goolord/alpha-nvim",
  event = "vimenter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- set your batman ascii art here
    dashboard.section.header.val = {
      [[           _                         _           ]],
      [[       _==/          i     i          \==_       ]],
      [[     /xx/            |\___/|            \xx\     ]],
      [[   /xxxx\            |xxxxx|            /xxxx\   ]],
      [[  |xxxxxx\_         _xxxxxxx_         _/xxxxxx|  ]],
      [[ xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx ]],
      [[|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|]],
      [[xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx]],
      [[|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|]],
      [[ xxxxxx/^^^^"\xxxxxxxxxxxxxxxxxxxxx/^^^^^\xxxxxx ]],
      [[  |xxx|       \xxx/^^\xxxxx/^^\xxx/       |xxx|  ]],
      [[    \xx\       \x/    \xxx/    \x/       /xx/    ]],
      [[       "\       "      \x/      "       /"       ]],
      [[                        !                        ]],
    }

    -- apply the configuration
    alpha.setup(dashboard.opts)
  end,
}
