return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.6.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 30,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 8,
  nextobjectid = 35,
  backgroundcolor = { 94, 126, 181 },
  properties = {
    ["playertype"] = { id = 4 }
  },
  tilesets = {
    {
      name = "Ocean",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 30,
      image = "tilesets/Ocean.png",
      imagewidth = 480,
      imageheight = 160,
      objectalignment = "topleft",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {
        ["author"] = "KnoblePersona"
      },
      wangsets = {},
      tilecount = 300,
      tiles = {}
    },
    {
      name = "splash",
      firstgid = 301,
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "tilesets/splash.png",
      imagewidth = 128,
      imageheight = 448,
      objectalignment = "topleft",
      tileoffset = {
        x = -64,
        y = -64
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 64
      },
      properties = {
        ["author"] = "Julien Jorge"
      },
      wangsets = {},
      tilecount = 7,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 66
            },
            {
              tileid = 1,
              duration = 66
            },
            {
              tileid = 2,
              duration = 66
            },
            {
              tileid = 3,
              duration = 66
            },
            {
              tileid = 4,
              duration = 66
            },
            {
              tileid = 5,
              duration = 66
            },
            {
              tileid = 6,
              duration = 66
            }
          }
        }
      }
    },
    {
      name = "Creatures_8x8",
      firstgid = 308,
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "tilesets/Creatures_8x8.png",
      imagewidth = 64,
      imageheight = 8,
      objectalignment = "topleft",
      tileoffset = {
        x = -4,
        y = -4
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      wangsets = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
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
                name = "hull",
                type = "Fixture",
                shape = "ellipse",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
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
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
            }
          }
        },
        {
          id = 4,
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
                name = "hull",
                type = "Fixture",
                shape = "ellipse",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          },
          animation = {
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 7,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "Ana",
      firstgid = 316,
      tilewidth = 48,
      tileheight = 48,
      spacing = 0,
      margin = 0,
      columns = 15,
      image = "tilesets/Ana.png",
      imagewidth = 720,
      imageheight = 48,
      objectalignment = "unspecified",
      tileoffset = {
        x = -24,
        y = -24
      },
      grid = {
        orientation = "orthogonal",
        width = 48,
        height = 48
      },
      properties = {},
      wangsets = {},
      tilecount = 15,
      tiles = {
        {
          id = 0,
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
                name = "hull",
                type = "Fixture",
                shape = "ellipse",
                x = 12,
                y = 12,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "Creatures_16x16",
      firstgid = 331,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "tilesets/Creatures_16x16.png",
      imagewidth = 64,
      imageheight = 16,
      objectalignment = "unspecified",
      tileoffset = {
        x = -8,
        y = -8
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
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
                name = "hull",
                type = "Fixture",
                shape = "ellipse",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
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
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "Creatures_32x32",
      firstgid = 335,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "tilesets/Creatures_32x32.png",
      imagewidth = 128,
      imageheight = 32,
      objectalignment = "unspecified",
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
      tilecount = 4,
      tiles = {
        {
          id = 0,
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
                name = "hull",
                type = "Fixture",
                shape = "ellipse",
                x = 4,
                y = 4,
                width = 24,
                height = 24,
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
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
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
      width = 30,
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
      chunks = {
        {
          x = 0, y = 0, width = 10, height = 20,
          data = "eJzt0DVCggEAQOEfbBcL0M2OVUWcMDAuYcclTNBL2Ogl7LiEHZewY/I7g64M3/qGFwqCIJTzL+100EmcLhJ0/7EXJo98CiikiGJKKKWWOuppoJEmmmmhlTaS9NBLH/2kGGCQIYYZYZQxxplgkimmmWGWOeZZYJEllkmTYYVV1lhng0222GaHLLvssc8BhxxxzAmnnHHOBZdccc0Nt9xxzwOPPPHMC6+88c4Hn3zxzQ9lRpdTQSVVRIgSo5oafgHBvC62"
        },
        {
          x = 10, y = 0, width = 10, height = 20,
          data = "eJzt0Ec2QwEAQNH/xYxEnYSQxEwJYhNRE5vQyyZ0sQmEYBN62YReNqHlnmMBRmYGd/zOeWEQBOG/XyVJkf7jTg21RIlRRz0NNNJEM5100U0PGXrpo58sA+QYZIhhRhhljDwFxplgkimmmWGWOeZZYJEllllhlTXW2WCTIltss8MuJfbYp8wBhxxxzAmnnHHOBZdccc0Nt9xxzwOPPPHMC6+88c4Hn3zxHfyMDakiQjVxWmglQRvtJEmRpoMKAtYsmw=="
        },
        {
          x = 20, y = 0, width = 10, height = 20,
          data = "eJzt0Mc5gwEAgOE/hwRRbkR0jxrc1Igl9LKEFmQJBGEJvSyhlyV0MYL3mA1ccngv3/ELBUEQKvoXzbTQWtCqqSFGLXHqqKeBRproZ4BBhhhmhCSjpBhjnAkmmWKaGWaZY54FFllimRVWSbPGOhtk2GSLbbLssMseOfY54JAjjjnhlDPOueCSK6654ZY77nngkSeeeeGVN9754JMvvvkhzy9hEyOUUEoZUcqpoJIq2ming0666CZBD7308QeS1CuI"
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "creaturetypes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 33,
          name = "Commonfish",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 376,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 308,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["depthmax"] = 20000,
            ["depthmin"] = 4000,
            ["eatevolution"] = 2,
            ["eathealth"] = 4,
            ["level"] = 1,
            ["think"] = "swimRandom"
          }
        },
        {
          id = 2,
          name = "Lanternfish",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 392,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 308,
          visible = true,
          properties = {
            ["attackrange"] = 32,
            ["attackspeed"] = 2,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["depthmax"] = 20000,
            ["depthmin"] = 4000,
            ["eatevolution"] = 2,
            ["eathealth"] = 4,
            ["level"] = 2,
            ["playerdamage"] = 1,
            ["think"] = "attackOrSwim"
          }
        },
        {
          id = 3,
          name = "CombJelly",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 408,
          width = 8,
          height = 8,
          rotation = 0,
          gid = 312,
          visible = true,
          properties = {
            ["attackrange"] = 32,
            ["attackspeed"] = 2,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["depthmax"] = 25000,
            ["depthmin"] = 5000,
            ["eatevolution"] = 2,
            ["eathealth"] = 4,
            ["level"] = 2,
            ["playerdamage"] = 2,
            ["think"] = "attackOrSwim"
          }
        },
        {
          id = 32,
          name = "VampSquid",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 448,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 331,
          visible = true,
          properties = {
            ["attackrange"] = 48,
            ["attackspeed"] = 3,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["depthmax"] = 25000,
            ["depthmin"] = 5000,
            ["eatevolution"] = 4,
            ["eathealth"] = 3,
            ["level"] = 3,
            ["playerdamage"] = 4,
            ["think"] = "attackOrSwim"
          }
        },
        {
          id = 34,
          name = "Angler",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 496,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 335,
          visible = true,
          properties = {
            ["attackrange"] = 64,
            ["attackspeed"] = 4,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["depthmax"] = 25000,
            ["depthmin"] = 5000,
            ["eatevolution"] = 6,
            ["eathealth"] = 2,
            ["level"] = 4,
            ["playerdamage"] = 8,
            ["think"] = "attackOrSwim"
          }
        },
        {
          id = 4,
          name = "Ana",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 392,
          width = 48,
          height = 48,
          rotation = 0,
          gid = 316,
          visible = true,
          properties = {
            ["beginContact"] = "playerBeginContact",
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["think"] = "updatePlayerSprite"
          }
        }
      }
    },
    {
      type = "group",
      id = 5,
      name = "BigGuy",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      layers = {
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 6,
          name = "left",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 10,
              name = "jaw",
              type = "",
              shape = "polygon",
              x = 104,
              y = 7264,
              width = 0,
              height = 0,
              rotation = -45,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -16, y = -24 },
                { x = -24, y = -96 },
                { x = -24, y = -240 },
                { x = -8, y = -328 },
                { x = -40, y = -384 },
                { x = -16, y = -496 },
                { x = -72, y = -624 },
                { x = -96, y = -752 },
                { x = -64, y = -904 },
                { x = -32, y = -1000 },
                { x = -40, y = -1120 },
                { x = -40, y = -1144 },
                { x = -96, y = -1312 },
                { x = -104, y = -1360 },
                { x = -64, y = -1512 },
                { x = -32, y = -1696 },
                { x = -32, y = -1816 },
                { x = -32, y = -1920 },
                { x = -8, y = -2032 },
                { x = 48, y = -2248 },
                { x = 24, y = -2472 },
                { x = -16, y = -2584 },
                { x = -120, y = -2752 },
                { x = -112, y = -2944 },
                { x = -40, y = -3152 },
                { x = 8, y = -3272 },
                { x = 56, y = -3344 },
                { x = 40, y = -3440 },
                { x = -48, y = -3696 },
                { x = -120, y = -3760 },
                { x = -192, y = -3832 },
                { x = -256, y = -4168 },
                { x = -168, y = -4264 },
                { x = -16, y = -4424 },
                { x = 24, y = -4576 },
                { x = -120, y = -4760 },
                { x = -152, y = -4928 },
                { x = 8, y = -5048 },
                { x = 128, y = -5152 },
                { x = 112, y = -5248 },
                { x = 56, y = -5296 },
                { x = -224, y = -5304 },
                { x = -336, y = -5528 },
                { x = -128, y = -5696 },
                { x = 40, y = -5848 },
                { x = 96, y = -6032 },
                { x = -72, y = -6160 },
                { x = -296, y = -6368 },
                { x = -296, y = -6376 },
                { x = -24, y = -6736 },
                { x = -168, y = -6864 },
                { x = -88, y = -6984 },
                { x = 200, y = -7064 },
                { x = 80, y = -7120 },
                { x = -208, y = -7136 },
                { x = -160, y = -7264 },
                { x = -160, y = -7304 },
                { x = -176, y = -7312 },
                { x = -216, y = -7336 },
                { x = -288, y = -7320 },
                { x = -352, y = -7344 },
                { x = -408, y = -7352 },
                { x = -480, y = -7344 },
                { x = -512, y = -7328 },
                { x = -512, y = 0 },
                { x = 8, y = 600 }
              },
              properties = {
                ["bodymass"] = 1000000,
                ["bodyrotation"] = true,
                ["bodytype"] = "dynamic",
                ["think"] = "moveInRelationToPlayer"
              }
            },
            {
              id = 12,
              name = "eye",
              type = "",
              shape = "ellipse",
              x = 40,
              y = 7256,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {
                ["linecolor"] = "#ffffffff"
              }
            },
            {
              id = 13,
              name = "pupil",
              type = "",
              shape = "ellipse",
              x = 56,
              y = 7264,
              width = 16,
              height = 16,
              rotation = 0,
              visible = true,
              properties = {
                ["fillcolor"] = "#ffffffff"
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 7,
          name = "right",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 11,
              name = "jaw",
              type = "",
              shape = "polygon",
              x = 104,
              y = 7264,
              width = 0,
              height = 0,
              rotation = 45,
              visible = true,
              polygon = {
                { x = 360, y = -7360 },
                { x = 480, y = -7336 },
                { x = 480, y = 32 },
                { x = -32, y = 592 },
                { x = 0, y = 0 },
                { x = -16, y = -24 },
                { x = -24, y = -96 },
                { x = -24, y = -240 },
                { x = -8, y = -328 },
                { x = -40, y = -384 },
                { x = -16, y = -496 },
                { x = -72, y = -624 },
                { x = -96, y = -752 },
                { x = -64, y = -904 },
                { x = -32, y = -1000 },
                { x = -40, y = -1120 },
                { x = -40, y = -1144 },
                { x = -96, y = -1312 },
                { x = -104, y = -1360 },
                { x = -64, y = -1512 },
                { x = -32, y = -1696 },
                { x = -32, y = -1816 },
                { x = -32, y = -1920 },
                { x = -8, y = -2032 },
                { x = 48, y = -2248 },
                { x = 24, y = -2472 },
                { x = -16, y = -2584 },
                { x = -120, y = -2752 },
                { x = -112, y = -2944 },
                { x = -40, y = -3152 },
                { x = 8, y = -3272 },
                { x = 56, y = -3344 },
                { x = 40, y = -3440 },
                { x = -48, y = -3696 },
                { x = -120, y = -3760 },
                { x = -192, y = -3832 },
                { x = -256, y = -4168 },
                { x = -168, y = -4264 },
                { x = -16, y = -4424 },
                { x = 24, y = -4576 },
                { x = -120, y = -4760 },
                { x = -152, y = -4928 },
                { x = 8, y = -5048 },
                { x = 128, y = -5152 },
                { x = 112, y = -5248 },
                { x = 56, y = -5296 },
                { x = -224, y = -5304 },
                { x = -336, y = -5528 },
                { x = -128, y = -5696 },
                { x = 40, y = -5848 },
                { x = 96, y = -6032 },
                { x = -72, y = -6160 },
                { x = -296, y = -6368 },
                { x = -296, y = -6376 },
                { x = -24, y = -6736 },
                { x = -168, y = -6864 },
                { x = -88, y = -6984 },
                { x = 200, y = -7064 },
                { x = 80, y = -7120 },
                { x = -208, y = -7136 },
                { x = -160, y = -7264 },
                { x = -160, y = -7304 },
                { x = -104, y = -7328 },
                { x = -16, y = -7344 },
                { x = 72, y = -7336 },
                { x = 152, y = -7344 },
                { x = 224, y = -7360 }
              },
              properties = {
                ["bodymass"] = 1000000,
                ["bodyrotation"] = true,
                ["bodytype"] = "dynamic",
                ["think"] = "moveInRelationToPlayer"
              }
            },
            {
              id = 31,
              name = "eye",
              type = "",
              shape = "ellipse",
              x = 128,
              y = 7256,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {
                ["linecolor"] = "#ffffffff"
              }
            },
            {
              id = 30,
              name = "pupil",
              type = "",
              shape = "ellipse",
              x = 128,
              y = 7264,
              width = 16,
              height = 16,
              rotation = 0,
              visible = true,
              properties = {
                ["fillcolor"] = "#ffffffff"
              }
            }
          }
        }
      }
    }
  }
}
