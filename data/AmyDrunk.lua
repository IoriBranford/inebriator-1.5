return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.6.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 15,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 3,
  nextobjectid = 8,
  properties = {},
  tilesets = {
    {
      name = "Amy",
      firstgid = 1,
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
    },
    {
      name = "demonshots",
      firstgid = 29,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "tilesets/demonshots.png",
      imagewidth = 32,
      imageheight = 256,
      objectalignment = "topleft",
      tileoffset = {
        x = -16,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      wangsets = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          properties = {
            ["tilename"] = "player_lv0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 3,
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
                id = 2,
                name = "body",
                type = "Fixture",
                shape = "rectangle",
                x = 8,
                y = 10,
                width = 16,
                height = 12,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["tilename"] = "player_lv1"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
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
                id = 1,
                name = "body",
                type = "Fixture",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 2,
          properties = {
            ["tilename"] = "player_lv2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
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
                id = 1,
                name = "body",
                type = "Fixture",
                shape = "rectangle",
                x = 8,
                y = 6,
                width = 16,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 3,
          properties = {
            ["tilename"] = "player_lv3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
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
                id = 1,
                name = "body",
                type = "Fixture",
                shape = "rectangle",
                x = 8,
                y = 4,
                width = 16,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 4,
          properties = {
            ["tilename"] = "player_lv4"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
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
                id = 1,
                name = "body",
                type = "Fixture",
                shape = "rectangle",
                x = 8,
                y = 2,
                width = 16,
                height = 28,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 5,
          properties = {
            ["tilename"] = "wingman"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
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
                id = 1,
                name = "body",
                type = "Fixture",
                shape = "ellipse",
                x = 10,
                y = 10,
                width = 12,
                height = 12,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 6,
          properties = {
            ["tilename"] = "bombshrapnel"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
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
                id = 1,
                name = "body",
                type = "Fixture",
                shape = "ellipse",
                x = 8,
                y = 8,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "winebomb",
      firstgid = 37,
      tilewidth = 18,
      tileheight = 12,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "tilesets/winebomb.png",
      imagewidth = 18,
      imageheight = 24,
      objectalignment = "topleft",
      tileoffset = {
        x = -9,
        y = -6
      },
      grid = {
        orientation = "orthogonal",
        width = 18,
        height = 12
      },
      properties = {},
      wangsets = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
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
                id = 1,
                name = "",
                type = "",
                shape = "ellipse",
                x = 6,
                y = 0,
                width = 12,
                height = 12,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 15,
      height = 20,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      chunks = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "unittypes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "player",
          type = "Unit",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        },
        {
          id = 2,
          name = "shot_lv0",
          type = "Unit",
          shape = "rectangle",
          x = 88,
          y = 32,
          width = 32,
          height = 32,
          rotation = -90,
          gid = 29,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        },
        {
          id = 3,
          name = "shot_lv1",
          type = "Unit",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 32,
          height = 32,
          rotation = -90,
          gid = 30,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        },
        {
          id = 4,
          name = "shot_lv2",
          type = "Unit",
          shape = "rectangle",
          x = 168,
          y = 32,
          width = 32,
          height = 32,
          rotation = -90,
          gid = 31,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        },
        {
          id = 5,
          name = "shot_lv3",
          type = "Unit",
          shape = "rectangle",
          x = 208,
          y = 32,
          width = 32,
          height = 32,
          rotation = -90,
          gid = 32,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        },
        {
          id = 6,
          name = "shot_lv4",
          type = "Unit",
          shape = "rectangle",
          x = 248,
          y = 32,
          width = 32,
          height = 32,
          rotation = -90,
          gid = 33,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        },
        {
          id = 7,
          name = "bombbullet",
          type = "Unit",
          shape = "rectangle",
          x = 280,
          y = 32,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 37,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic"
          }
        }
      }
    }
  }
}
