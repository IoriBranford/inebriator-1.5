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
  nextlayerid = 4,
  nextobjectid = 9,
  properties = {},
  tilesets = {
    {
      name = "humanshots",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "tilesets/humanshots.png",
      imagewidth = 128,
      imageheight = 256,
      objectalignment = "topleft",
      tileoffset = {
        x = -24,
        y = -8
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 16
      },
      properties = {
        ["commoncollision"] = 0
      },
      wangsets = {},
      tilecount = 64,
      tiles = {
        {
          id = 0,
          properties = {
            ["tilename"] = "pike"
          },
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
                x = 23.5,
                y = 7.5,
                width = 1,
                height = 1,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["tilename"] = "holy"
          }
        },
        {
          id = 2,
          properties = {
            ["tilename"] = "axe"
          },
          animation = {
            {
              tileid = 2,
              duration = 66
            },
            {
              tileid = 3,
              duration = 66
            },
            {
              tileid = 6,
              duration = 66
            },
            {
              tileid = 7,
              duration = 66
            }
          }
        },
        {
          id = 3,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 4,
          properties = {
            ["tilename"] = "sword"
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
                name = "",
                type = "",
                shape = "ellipse",
                x = 23.5,
                y = 7.5,
                width = 1,
                height = 1,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 5,
          properties = {
            ["tilename"] = "arrow"
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
                name = "",
                type = "",
                shape = "ellipse",
                x = 23.5,
                y = 7.5,
                width = 1,
                height = 1,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 6,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 7,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 8,
          properties = {
            ["tilename"] = "magic"
          }
        },
        {
          id = 9,
          properties = {
            ["tilename"] = "ballista"
          }
        },
        {
          id = 10,
          properties = {
            ["tilename"] = "electric"
          },
          animation = {
            {
              tileid = 10,
              duration = 66
            },
            {
              tileid = 11,
              duration = 66
            }
          }
        },
        {
          id = 11,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 12,
          properties = {
            ["tilename"] = "water"
          },
          animation = {
            {
              tileid = 12,
              duration = 66
            },
            {
              tileid = 13,
              duration = 66
            },
            {
              tileid = 14,
              duration = 66
            },
            {
              tileid = 15,
              duration = 66
            }
          }
        },
        {
          id = 13,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 14,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 15,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 16,
          properties = {
            ["tilename"] = "firearrow"
          },
          animation = {
            {
              tileid = 16,
              duration = 66
            },
            {
              tileid = 17,
              duration = 66
            },
            {
              tileid = 18,
              duration = 66
            },
            {
              tileid = 19,
              duration = 66
            }
          }
        },
        {
          id = 17,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 18,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 19,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 20,
          properties = {
            ["tilename"] = "catapult"
          },
          animation = {
            {
              tileid = 20,
              duration = 66
            },
            {
              tileid = 21,
              duration = 66
            },
            {
              tileid = 22,
              duration = 66
            },
            {
              tileid = 23,
              duration = 66
            }
          }
        },
        {
          id = 21,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 22,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 23,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 24,
          properties = {
            ["tilename"] = "blood"
          },
          animation = {
            {
              tileid = 24,
              duration = 66
            },
            {
              tileid = 25,
              duration = 66
            },
            {
              tileid = 26,
              duration = 66
            },
            {
              tileid = 27,
              duration = 66
            }
          }
        },
        {
          id = 25,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 26,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 27,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 28,
          properties = {
            ["tilename"] = "fire"
          },
          animation = {
            {
              tileid = 28,
              duration = 66
            },
            {
              tileid = 29,
              duration = 66
            },
            {
              tileid = 30,
              duration = 66
            },
            {
              tileid = 31,
              duration = 66
            }
          }
        },
        {
          id = 29,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 30,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 31,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 32,
          properties = {
            ["tilename"] = "spiritfire"
          },
          animation = {
            {
              tileid = 32,
              duration = 66
            },
            {
              tileid = 33,
              duration = 66
            },
            {
              tileid = 34,
              duration = 66
            },
            {
              tileid = 35,
              duration = 66
            }
          }
        },
        {
          id = 33,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 34,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 35,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 36,
          properties = {
            ["tilename"] = "poisongas"
          },
          animation = {
            {
              tileid = 36,
              duration = 66
            },
            {
              tileid = 37,
              duration = 66
            },
            {
              tileid = 38,
              duration = 66
            },
            {
              tileid = 39,
              duration = 66
            },
            {
              tileid = 40,
              duration = 66
            },
            {
              tileid = 41,
              duration = 66
            },
            {
              tileid = 42,
              duration = 66
            },
            {
              tileid = 43,
              duration = 66
            }
          }
        },
        {
          id = 37,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 38,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 39,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 40,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 41,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 42,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 43,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 44,
          properties = {
            ["tilename"] = "fireblast"
          },
          animation = {
            {
              tileid = 44,
              duration = 66
            },
            {
              tileid = 45,
              duration = 66
            },
            {
              tileid = 46,
              duration = 66
            },
            {
              tileid = 47,
              duration = 66
            },
            {
              tileid = 48,
              duration = 66
            },
            {
              tileid = 49,
              duration = 66
            },
            {
              tileid = 50,
              duration = 66
            },
            {
              tileid = 51,
              duration = 66
            }
          }
        },
        {
          id = 45,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 46,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 47,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 48,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 49,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 50,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 51,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 52,
          properties = {
            ["tilename"] = "kunai"
          }
        },
        {
          id = 53,
          properties = {
            ["tilename"] = "barbed"
          }
        },
        {
          id = 54,
          properties = {
            ["tilename"] = "wingmanhypnotized"
          }
        },
        {
          id = 55,
          properties = {
            ["tilename"] = "stone"
          }
        },
        {
          id = 56,
          properties = {
            ["tilename"] = "axeblade"
          }
        },
        {
          id = 57,
          properties = {
            ["tilename"] = "trident"
          }
        },
        {
          id = 58,
          properties = {
            ["tilename"] = "feather"
          }
        },
        {
          id = 59,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 60,
          properties = {
            ["tilename"] = "poison"
          },
          animation = {
            {
              tileid = 60,
              duration = 66
            },
            {
              tileid = 61,
              duration = 66
            },
            {
              tileid = 62,
              duration = 66
            },
            {
              tileid = 63,
              duration = 66
            }
          }
        },
        {
          id = 61,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 62,
          properties = {
            ["tilename"] = ""
          }
        },
        {
          id = 63,
          properties = {
            ["tilename"] = ""
          }
        }
      }
    },
    {
      name = "sparks_huge",
      firstgid = 65,
      tilewidth = 96,
      tileheight = 96,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "tilesets/sparks_huge.png",
      imagewidth = 480,
      imageheight = 384,
      objectalignment = "topleft",
      tileoffset = {
        x = -48,
        y = -48
      },
      grid = {
        orientation = "orthogonal",
        width = 96,
        height = 96
      },
      properties = {},
      wangsets = {},
      tilecount = 20,
      tiles = {
        {
          id = 0,
          properties = {
            ["tilename"] = "explosion"
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            },
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
            },
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            }
          }
        },
        {
          id = 10,
          properties = {
            ["tilename"] = "playerexplosion"
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
                name = "blast",
                type = "Fixture",
                shape = "ellipse",
                x = 6,
                y = 6,
                width = 84,
                height = 84,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 10,
              duration = 83
            },
            {
              tileid = 11,
              duration = 83
            },
            {
              tileid = 12,
              duration = 83
            },
            {
              tileid = 13,
              duration = 83
            },
            {
              tileid = 14,
              duration = 83
            },
            {
              tileid = 15,
              duration = 83
            },
            {
              tileid = 16,
              duration = 83
            },
            {
              tileid = 17,
              duration = 83
            },
            {
              tileid = 18,
              duration = 83
            },
            {
              tileid = 19,
              duration = 83
            }
          }
        }
      }
    },
    {
      name = "sparks_med",
      firstgid = 85,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "tilesets/sparks_med.png",
      imagewidth = 192,
      imageheight = 96,
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
      tilecount = 18,
      tiles = {
        {
          id = 0,
          properties = {
            ["tilename"] = "explosion"
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            },
            {
              tileid = 4,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            }
          }
        },
        {
          id = 6,
          properties = {
            ["tilename"] = "wingmanexplosion"
          },
          animation = {
            {
              tileid = 6,
              duration = 67
            },
            {
              tileid = 7,
              duration = 67
            },
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            },
            {
              tileid = 10,
              duration = 67
            },
            {
              tileid = 11,
              duration = 67
            }
          }
        },
        {
          id = 12,
          properties = {
            ["tilename"] = "teleport"
          },
          animation = {
            {
              tileid = 12,
              duration = 16
            },
            {
              tileid = 13,
              duration = 16
            },
            {
              tileid = 14,
              duration = 16
            },
            {
              tileid = 15,
              duration = 16
            },
            {
              tileid = 16,
              duration = 16
            },
            {
              tileid = 17,
              duration = 16
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "bullets",
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
          name = "BulletPike",
          type = "Unit",
          shape = "rectangle",
          x = 24,
          y = 8,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "BulletArrow",
          type = "Unit",
          shape = "rectangle",
          x = 24,
          y = 24,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "BulletSword",
          type = "Unit",
          shape = "rectangle",
          x = 56,
          y = 8,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "effects",
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
          name = "ExplosionLargeEnemy",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 128,
          width = 96,
          height = 96,
          rotation = 0,
          gid = 65,
          visible = true,
          properties = {
            ["module"] = "Behavior",
            ["think"] = "timeout",
            ["time"] = "animation"
          }
        },
        {
          id = 5,
          name = "ExplosionPlayer",
          type = "Unit",
          shape = "rectangle",
          x = 160,
          y = 128,
          width = 96,
          height = 96,
          rotation = 0,
          gid = 75,
          visible = true,
          properties = {
            ["bodytileshape"] = "blast",
            ["bodytype"] = "dynamic",
            ["module"] = "Behavior",
            ["think"] = "timeout",
            ["time"] = "animation"
          }
        },
        {
          id = 6,
          name = "ExplosionEnemy",
          type = "Unit",
          shape = "rectangle",
          x = 16,
          y = 56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 85,
          visible = true,
          properties = {
            ["module"] = "Behavior",
            ["think"] = "timeout",
            ["time"] = "animation"
          }
        },
        {
          id = 7,
          name = "ExplosionFriendly",
          type = "Unit",
          shape = "rectangle",
          x = 56,
          y = 56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 91,
          visible = true,
          properties = {
            ["module"] = "Behavior",
            ["think"] = "timeout",
            ["time"] = "animation"
          }
        },
        {
          id = 8,
          name = "Teleportation",
          type = "Unit",
          shape = "rectangle",
          x = 96,
          y = 56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 97,
          visible = true,
          properties = {
            ["module"] = "Behavior",
            ["think"] = "timeout",
            ["time"] = "animation"
          }
        }
      }
    }
  }
}