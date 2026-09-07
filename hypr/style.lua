-- STYLES AND ANIMATIONS

require("colors")

hl.config({
  general = {
    gaps_in  = 3,
    gaps_out = 10,

    border_size = 2,

    col = {
      active_border   = { colors = {main_color} },
      inactive_border = { colors = {addictional_color} }
    },
    
    resize_on_border = true,

    allow_tearing = false,
  
    layout = "dwindle",

    snap = {
      enabled = true,
      window_gap = 5,
      monitor_gap = 5,
      respect_gaps = true
    }
  },

  decoration = {
    rounding = 0,
    
    active_opacity = 1,
    inactive_opacity = 0.86,

    blur = {
      size = 3,
      noise = 0.17,
      contrast = 1.2,
      vibrancy = 0,
    },
    
    shadow = { enabled = false }
  }
})

hl.config({
  dwindle = {
    preserve_split = true
  },
  master = {
    new_status = "master"
  },
  scrolling = {
    fullscreen_on_one_column = true
  }
})

hl.curve("easeOutQuint"  , { type = "bezier", points = { {0.23, 1}   , {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear"        , { type = "bezier", points = { {0   , 0}   , {1   , 1} } })
hl.curve("almostLinear"  , { type = "bezier", points = { {0.5 , 0.5} , {0.75, 1} } })
hl.curve("quick"         , { type = "bezier", points = { {0.15, 0}   , {0.1 , 1} } })

hl.curve("easy"          , { type = "spring", mass = 1 , stiffness = 238.1191, dampening = 24.2 })
hl.curve("hard"          , { type = "spring", mass = 3, stiffness = 300      , dampening = 37   })

hl.animation({ leaf = "global"       , enabled = true, speed = 10  , bezier = "default"        })
hl.animation({ leaf = "border"       , enabled = true, speed = 5.39, bezier = "easeOutQuint"   })
hl.animation({ leaf = "windows"      , enabled = true, speed = 4.8 , spring = "easy"           })
hl.animation({ leaf = "windowsIn"    , enabled = true, speed = 4.1 , spring = "easy"          , style = "popin 87%"  })
hl.animation({ leaf = "windowsOut"   , enabled = true, speed = 1.49, bezier = "easeInOutCubic", style = "popin 87%" }) 
hl.animation({ leaf = "fade"         , enabled = true, speed = 1.26, bezier = "almostLinear"   })
hl.animation({ leaf = "layers"       , enabled = true, speed = 3.81, bezier = "easeOutQuint"   })
hl.animation({ leaf = "layersIn"     , enabled = true, speed = 4   , bezier = "easeOutQuint"   })
hl.animation({ leaf = "layersOut"    , enabled = true, speed = 1.5 , bezier = "linear"         })
hl.animation({ leaf = "fadeLayersIn" , enabled = true, speed = 1.79, bezier = "almostLinear"   })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.4 , bezier = "almostLinear"   })
hl.animation({ leaf = "workspaces"   , enabled = true, speed = 0.8 , spring = "easy"          , style = "slidevert"})
hl.animation({ leaf = "zoomFactor"   , enabled = true, speed = 7   , bezier = "quick"          }) 
