return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.6.0",
  name = "Amy",
  tilewidth = 64,
  tileheight = 64,
  spacing = 0,
  margin = 0,
  columns = 4,
  image = "tilesets/Amy.png",
  imagewidth = 256,
  imageheight = 448,
  objectalignment = "topleft",
  tileoffset = {
    x = -32,
    y = -32
  },
  grid = {
    orientation = "orthogonal",
    width = 64,
    height = 64
  },
  properties = {
    ["commoncollision"] = 0
  },
  wangsets = {},
  tilecount = 28,
  tiles = {
    {
      id = 0,
      properties = {
        ["tilename"] = "forward"
      },
      objectGroup = {
        type = "objectgroup",
        draworder = "index",
        id = 5,
        name = "",
        visible = true,
        opacity = 1,
        offsetx = 0,
        offsety = 0,
        parallaxx = 1,
        parallaxy = 1,
        properties = {},
        objects = {
          {
            id = 4,
            name = "body",
            type = "",
            shape = "ellipse",
            x = 28,
            y = 28,
            width = 8,
            height = 8,
            rotation = 0,
            visible = true,
            properties = {
              ["collidable"] = true
            }
          },
          {
            id = 7,
            name = "wingman1",
            type = "",
            shape = "point",
            x = 8,
            y = 40,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 8,
            name = "wingman2",
            type = "",
            shape = "point",
            x = 56,
            y = 40,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 10,
            name = "wingman3",
            type = "",
            shape = "point",
            x = 16,
            y = 16,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 11,
            name = "wingman4",
            type = "",
            shape = "point",
            x = 48,
            y = 16,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 12,
            name = "focuswingman1",
            type = "",
            shape = "point",
            x = 12,
            y = 24,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 13,
            name = "focuswingman2",
            type = "",
            shape = "point",
            x = 52,
            y = 24,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 14,
            name = "focuswingman3",
            type = "",
            shape = "point",
            x = 0,
            y = 12,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          },
          {
            id = 15,
            name = "focuswingman4",
            type = "",
            shape = "point",
            x = 64,
            y = 12,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            properties = {}
          }
        }
      },
      animation = {
        {
          tileid = 0,
          duration = 100
        },
        {
          tileid = 1,
          duration = 150
        },
        {
          tileid = 2,
          duration = 100
        },
        {
          tileid = 3,
          duration = 150
        }
      }
    },
    {
      id = 1,
      type = "PlayerAmy"
    },
    {
      id = 2,
      type = "PlayerAmy"
    },
    {
      id = 3,
      type = "PlayerAmy"
    },
    {
      id = 4,
      type = "PlayerAmy",
      properties = {
        ["name"] = "lefttilt",
        ["nextanim"] = "left"
      },
      animation = {
        {
          tileid = 4,
          duration = 67
        },
        {
          tileid = 5,
          duration = 67
        },
        {
          tileid = 6,
          duration = 67
        },
        {
          tileid = 7,
          duration = 67
        }
      }
    },
    {
      id = 5,
      type = "PlayerAmy"
    },
    {
      id = 6,
      type = "PlayerAmy"
    },
    {
      id = 7,
      type = "PlayerAmy",
      properties = {
        ["name"] = "leftuntilt",
        ["nextanim"] = "forward"
      },
      animation = {
        {
          tileid = 7,
          duration = 100
        },
        {
          tileid = 6,
          duration = 100
        },
        {
          tileid = 5,
          duration = 100
        },
        {
          tileid = 4,
          duration = 100
        }
      }
    },
    {
      id = 8,
      type = "PlayerAmy",
      properties = {
        ["name"] = "left"
      },
      animation = {
        {
          tileid = 8,
          duration = 100
        },
        {
          tileid = 9,
          duration = 100
        },
        {
          tileid = 10,
          duration = 100
        },
        {
          tileid = 11,
          duration = 100
        }
      }
    },
    {
      id = 9,
      type = "PlayerAmy"
    },
    {
      id = 10,
      type = "PlayerAmy"
    },
    {
      id = 11,
      type = "PlayerAmy"
    },
    {
      id = 12,
      type = "PlayerAmy",
      properties = {
        ["name"] = "righttilt",
        ["nextanim"] = "right"
      },
      animation = {
        {
          tileid = 12,
          duration = 100
        },
        {
          tileid = 13,
          duration = 100
        },
        {
          tileid = 14,
          duration = 100
        },
        {
          tileid = 15,
          duration = 100
        }
      }
    },
    {
      id = 13,
      type = "PlayerAmy"
    },
    {
      id = 14,
      type = "PlayerAmy"
    },
    {
      id = 15,
      type = "PlayerAmy",
      properties = {
        ["name"] = "rightuntilt",
        ["nextanim"] = "forward"
      },
      animation = {
        {
          tileid = 15,
          duration = 100
        },
        {
          tileid = 14,
          duration = 100
        },
        {
          tileid = 13,
          duration = 100
        },
        {
          tileid = 12,
          duration = 100
        }
      }
    },
    {
      id = 16,
      type = "PlayerAmy",
      properties = {
        ["name"] = "right"
      },
      animation = {
        {
          tileid = 16,
          duration = 100
        },
        {
          tileid = 17,
          duration = 100
        },
        {
          tileid = 18,
          duration = 100
        },
        {
          tileid = 19,
          duration = 100
        }
      }
    },
    {
      id = 17,
      type = "PlayerAmy"
    },
    {
      id = 18,
      type = "PlayerAmy"
    },
    {
      id = 19,
      type = "PlayerAmy"
    },
    {
      id = 20,
      type = "PlayerAmy",
      properties = {
        ["name"] = "bombready",
        ["nextanim"] = "bomblaunch"
      },
      animation = {
        {
          tileid = 20,
          duration = 50
        },
        {
          tileid = 21,
          duration = 50
        },
        {
          tileid = 22,
          duration = 50
        },
        {
          tileid = 23,
          duration = 50
        },
        {
          tileid = 24,
          duration = 50
        },
        {
          tileid = 25,
          duration = 50
        }
      }
    },
    {
      id = 21,
      type = "PlayerAmy"
    },
    {
      id = 22,
      type = "PlayerAmy"
    },
    {
      id = 23,
      type = "PlayerAmy"
    },
    {
      id = 24,
      type = "PlayerAmy"
    },
    {
      id = 25,
      type = "PlayerAmy"
    },
    {
      id = 26,
      type = "PlayerAmy",
      properties = {
        ["name"] = "bomblaunch",
        ["nextanim"] = "forward"
      },
      animation = {
        {
          tileid = 26,
          duration = 50
        },
        {
          tileid = 27,
          duration = 50
        }
      }
    },
    {
      id = 27,
      type = "PlayerAmy"
    }
  }
}
