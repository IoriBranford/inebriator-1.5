return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.6.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 52,
  height = 40,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 25,
  nextobjectid = 250,
  properties = {
    ["delayinitobjects"] = true,
    ["enemydefeatsound"] = "snd/knockout.ogg",
    ["enemyguardsound"] = "snd/parry.ogg",
    ["enemyhitsound"] = "snd/hit.ogg",
    ["losemusic"] = "mus/gameover.vgm",
    ["script"] = "ShmupMap",
    ["targetlocksound"] = "snd/targetlock.ogg",
    ["winmusic"] = "mus/clear.vgm"
  },
  tilesets = {
    {
      name = "hud_icons",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "tilesets/hud_icons.png",
      imagewidth = 32,
      imageheight = 64,
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
      properties = {},
      wangsets = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "Amy"
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "Snow"
          }
        },
        {
          id = 5,
          properties = {
            ["name"] = "Snow_locked"
          }
        }
      }
    },
    {
      name = "particles",
      firstgid = 9,
      tilewidth = 4,
      tileheight = 4,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "tilesets/particles.png",
      imagewidth = 32,
      imageheight = 32,
      objectalignment = "topleft",
      tileoffset = {
        x = -2,
        y = -2
      },
      grid = {
        orientation = "orthogonal",
        width = 4,
        height = 4
      },
      properties = {
        ["commonanimation"] = 0
      },
      wangsets = {},
      tilecount = 64,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "damage"
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
          properties = {
            ["name"] = "hypno"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "guard"
          }
        },
        {
          id = 12,
          properties = {
            ["name"] = "bubble"
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "bluecharge"
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "charge"
          }
        },
        {
          id = 32,
          properties = {
            ["name"] = "defeat"
          }
        },
        {
          id = 40,
          properties = {
            ["name"] = "death"
          }
        },
        {
          id = 48,
          properties = {
            ["name"] = "enemyfire"
          }
        },
        {
          id = 56,
          properties = {
            ["name"] = "heal"
          }
        }
      }
    },
    {
      name = "playerhitbox",
      firstgid = 73,
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "tilesets/playerhitbox.png",
      imagewidth = 8,
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
      tilecount = 1,
      tiles = {}
    },
    {
      name = "sparks_huge",
      firstgid = 74,
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
          type = "Spark",
          properties = {
            ["name"] = "explosion"
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
          type = "PlayerDeath",
          properties = {
            ["name"] = "playerexplosion"
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
                x = 6,
                y = 6,
                width = 84,
                height = 84,
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
      firstgid = 94,
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
            ["name"] = "explosion"
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
            ["name"] = "wingmanexplosion"
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
            ["name"] = "teleport"
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
    },
    {
      name = "sparks_small",
      firstgid = 112,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "tilesets/sparks_small.png",
      imagewidth = 128,
      imageheight = 32,
      objectalignment = "topleft",
      tileoffset = {
        x = -8,
        y = -8
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {
        ["commonanimation"] = 0
      },
      wangsets = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "enemydamage"
          },
          animation = {
            {
              tileid = 0,
              duration = 16
            },
            {
              tileid = 1,
              duration = 16
            },
            {
              tileid = 2,
              duration = 16
            },
            {
              tileid = 3,
              duration = 16
            },
            {
              tileid = 4,
              duration = 16
            },
            {
              tileid = 5,
              duration = 16
            },
            {
              tileid = 6,
              duration = 16
            },
            {
              tileid = 7,
              duration = 16
            }
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "enemyguard"
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 128,
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
            ["name"] = "player_lv0"
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
                name = "",
                type = "",
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
            ["name"] = "player_lv1"
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
            ["name"] = "player_lv2"
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
            ["name"] = "player_lv3"
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
            ["name"] = "player_lv4"
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
            ["name"] = "wingman"
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
            ["name"] = "bombshrapnel"
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
      name = "humanshots",
      firstgid = 136,
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
            ["name"] = "pike"
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
            ["name"] = "holy"
          }
        },
        {
          id = 2,
          properties = {
            ["name"] = "axe"
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
          id = 4,
          properties = {
            ["name"] = "sword"
          }
        },
        {
          id = 5,
          properties = {
            ["name"] = "arrow"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "magic"
          }
        },
        {
          id = 9,
          properties = {
            ["name"] = "ballista"
          }
        },
        {
          id = 10,
          properties = {
            ["name"] = "electric"
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
          id = 12,
          properties = {
            ["name"] = "water"
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
          id = 16,
          properties = {
            ["name"] = "firearrow"
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
          id = 20,
          properties = {
            ["name"] = "catapult"
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
          id = 24,
          properties = {
            ["name"] = "blood"
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
          id = 28,
          properties = {
            ["name"] = "fire"
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
          id = 32,
          properties = {
            ["name"] = "spiritfire"
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
          id = 36,
          properties = {
            ["name"] = "poisongas"
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
          id = 44,
          properties = {
            ["name"] = "fireblast"
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
          id = 52,
          properties = {
            ["name"] = "kunai"
          }
        },
        {
          id = 53,
          properties = {
            ["name"] = "barbed"
          }
        },
        {
          id = 54,
          properties = {
            ["name"] = "wingmanhypnotized"
          }
        },
        {
          id = 55,
          properties = {
            ["name"] = "stone"
          }
        },
        {
          id = 56,
          properties = {
            ["name"] = "axeblade"
          }
        },
        {
          id = 57,
          properties = {
            ["name"] = "trident"
          }
        },
        {
          id = 58,
          properties = {
            ["name"] = "feather"
          }
        },
        {
          id = 60,
          properties = {
            ["name"] = "poison"
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
        }
      }
    },
    {
      name = "gameover",
      firstgid = 200,
      tilewidth = 192,
      tileheight = 40,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "tilesets/gameover.png",
      imagewidth = 192,
      imageheight = 40,
      objectalignment = "topleft",
      tileoffset = {
        x = -96,
        y = -20
      },
      grid = {
        orientation = "orthogonal",
        width = 192,
        height = 40
      },
      properties = {},
      wangsets = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "emotes",
      firstgid = 201,
      tilewidth = 24,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "tilesets/emotes.png",
      imagewidth = 192,
      imageheight = 64,
      objectalignment = "topleft",
      tileoffset = {
        x = -12,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 32,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "drunk"
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 3,
              duration = 125
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "heart"
          },
          animation = {
            {
              tileid = 4,
              duration = 125
            },
            {
              tileid = 5,
              duration = 125
            },
            {
              tileid = 6,
              duration = 125
            },
            {
              tileid = 7,
              duration = 125
            }
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "sweat"
          },
          animation = {
            {
              tileid = 8,
              duration = 66
            },
            {
              tileid = 9,
              duration = 66
            },
            {
              tileid = 10,
              duration = 66
            }
          }
        },
        {
          id = 11,
          properties = {
            ["name"] = "help"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            },
            {
              tileid = 12,
              duration = 125
            },
            {
              tileid = 13,
              duration = 125
            },
            {
              tileid = 14,
              duration = 125
            },
            {
              tileid = 15,
              duration = 125
            }
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "stun"
          },
          animation = {
            {
              tileid = 16,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            },
            {
              tileid = 18,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 19,
          properties = {
            ["name"] = "hostile"
          }
        },
        {
          id = 20,
          properties = {
            ["name"] = "angry"
          },
          animation = {
            {
              tileid = 20,
              duration = 125
            },
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "..."
          },
          animation = {
            {
              tileid = 24,
              duration = 250
            },
            {
              tileid = 25,
              duration = 250
            },
            {
              tileid = 26,
              duration = 250
            },
            {
              tileid = 27,
              duration = 250
            }
          }
        }
      }
    },
    {
      name = "winebomb",
      firstgid = 233,
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
    },
    {
      name = "humanshotwarning",
      firstgid = 235,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "tilesets/humanshotwarning.png",
      imagewidth = 48,
      imageheight = 16,
      objectalignment = "topleft",
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
      tilecount = 3,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 32
            },
            {
              tileid = 1,
              duration = 32
            },
            {
              tileid = 2,
              duration = 32
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
      id = 15,
      name = "healparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["areaspreadh"] = 16,
        ["areaspreadw"] = 16,
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 60,
        ["speedmin"] = 60,
        ["spread"] = 0,
        ["tileid"] = "heal",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "enemyfireparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 240,
        ["spread"] = 10,
        ["tileid"] = "enemyfire",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "defeatparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["lifetime"] = 0.5,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 180,
        ["speedmin"] = 90,
        ["tileid"] = "defeat",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "damageparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 180,
        ["spread"] = 22.5,
        ["tileid"] = "damage",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "guardparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["lifetime"] = 0.25,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 180,
        ["spread"] = 22.5,
        ["tileid"] = "guard",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "launchbombparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["lifetime"] = 0.12,
        ["maxparticles"] = "4",
        ["script"] = "ParticleLayer",
        ["speedmax"] = 480,
        ["speedmin"] = 400,
        ["spread"] = 30,
        ["tileset"] = "playerhitbox"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "deathparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["lifetime"] = 0.5,
        ["script"] = "ParticleLayer",
        ["speedmax"] = 360,
        ["speedmin"] = 120,
        ["spread"] = 90,
        ["tileid"] = "death",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "index",
      id = 9,
      name = "hud_inner",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["countdownsound"] = "snd/equip.ogg",
        ["extendsound"] = "snd/extend.ogg",
        ["gosound"] = "snd/extend.ogg",
        ["maxmultipliersound"] = "snd/maxed.ogg",
        ["newbombsound"] = "snd/item1.ogg",
        ["powerupsound"] = "snd/item1.ogg",
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 41,
          name = "timer",
          type = "",
          shape = "text",
          x = 4,
          y = 48,
          width = 40,
          height = 8,
          rotation = 0,
          visible = false,
          text = "0:00",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 2,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = false,
          properties = {}
        },
        {
          id = 3,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = false,
          properties = {}
        },
        {
          id = 7,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 132,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 116,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 68,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 52,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 36,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "reserves",
          type = "",
          shape = "text",
          x = 4,
          y = 36,
          width = 32,
          height = 8,
          rotation = 0,
          visible = false,
          text = "0",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        },
        {
          id = 29,
          name = "score",
          type = "",
          shape = "text",
          x = 4,
          y = 4,
          width = 232,
          height = 8,
          rotation = 0,
          visible = true,
          text = "SCORE000000000 LIFE@001000000",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["textformat"] = "SCORE%9d LIFE@%9d"
          }
        },
        {
          id = 48,
          name = "caravanrules",
          type = "",
          shape = "text",
          x = 64,
          y = 64,
          width = 112,
          height = 80,
          rotation = 0,
          visible = false,
          text = "%3d SECONDS\n%s BOMBS\n\nGOOD LUCK!!!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {
            ["textformat"] = "%3d SECONDS\n%s BOMBS\n\nGOOD LUCK!!!"
          }
        },
        {
          id = 49,
          name = "winebomb1",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 308,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 50,
          name = "winebomb2",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 308,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 51,
          name = "winebomb3",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 308,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 52,
          name = "winebomb4",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 308,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 53,
          name = "winebomb5",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 308,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 54,
          name = "activetriggers",
          type = "",
          shape = "text",
          x = 0,
          y = 272,
          width = 240,
          height = 48,
          rotation = 0,
          visible = false,
          text = "activetriggers",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "bottom",
          properties = {}
        },
        {
          id = 55,
          name = "continueprompt",
          type = "",
          shape = "text",
          x = 56,
          y = 264,
          width = 176,
          height = 32,
          rotation = 0,
          visible = false,
          text = "${joy_fire}: CONTINUE\n${joy_pausemenu}: SKIP",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "bottom",
          properties = {}
        },
        {
          id = 56,
          name = "battleprompt",
          type = "",
          shape = "text",
          x = 8,
          y = 264,
          width = 224,
          height = 32,
          rotation = 0,
          visible = false,
          text = "${joy_fire} OR ${joy_pausemenu}:\nEND TALK",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "bottom",
          properties = {}
        },
        {
          id = 63,
          name = "powerlevel",
          type = "",
          shape = "text",
          x = 104,
          y = 300,
          width = 28,
          height = 16,
          rotation = 0,
          visible = true,
          text = "Lv1",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {}
        },
        {
          id = 158,
          name = "difficulty",
          type = "",
          shape = "text",
          x = 156,
          y = 16,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          text = "${game_difficulty}",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          valign = "center",
          properties = {}
        },
        {
          id = 160,
          name = "hideupper",
          type = "UIHider",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 48,
          rotation = 0,
          visible = false,
          properties = {
            ["hideobjects"] = "score\nlife1\nlife2\nlife3\nlife4\nlife5\nlife6\nlife7\nlife8\nlife9\ndifficulty\nreserves\nwingleft\nwingright\ntimer"
          }
        },
        {
          id = 161,
          name = "hidelower",
          type = "UIHider",
          shape = "rectangle",
          x = 0,
          y = 292,
          width = 240,
          height = 28,
          rotation = 0,
          visible = false,
          properties = {
            ["hideobjects"] = "bomb1\nbomb2\nbomb3\nwinebomb1\nwinebomb2\nwinebomb3\nwinebomb4\nwinebomb5\npowerlevel\npowergauge"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "index",
      id = 21,
      name = "hud_outer_hori",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["canvasheight"] = 320,
        ["canvaswidth"] = 416,
        ["script"] = "ShmupHUD"
      },
      objects = {
        {
          id = 67,
          name = "screen",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {}
        },
        {
          id = 69,
          name = "score",
          type = "",
          shape = "text",
          x = -84,
          y = 8,
          width = 80,
          height = 88,
          rotation = 0,
          visible = true,
          text = "SCORE\n 000000000\n\nNEXT LIFE\n 001000000",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "SCORE\n%10d\n\nNEXT LIFE\n%10d"
          }
        },
        {
          id = 73,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 148,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 164,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 180,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 196,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 77,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 212,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 228,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 79,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 244,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 80,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 260,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 81,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = -44,
          y = 276,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 82,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 276,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = false,
          properties = {}
        },
        {
          id = 83,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = -80,
          y = 276,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = false,
          properties = {}
        },
        {
          id = 84,
          name = "reserves",
          type = "",
          shape = "text",
          x = -80,
          y = 276,
          width = 32,
          height = 16,
          rotation = 0,
          visible = false,
          text = "0",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 85,
          name = "timer",
          type = "",
          shape = "text",
          x = -84,
          y = 296,
          width = 80,
          height = 16,
          rotation = 0,
          visible = false,
          text = "TIME  0:00",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "TIME  %s"
          }
        },
        {
          id = 86,
          name = "caravanrules",
          type = "",
          shape = "text",
          x = 240,
          y = 72,
          width = 88,
          height = 108,
          rotation = 0,
          visible = false,
          text = "%3d SEC.\n%s BOMB\n\nGOOD LUCK!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {
            ["textformat"] = "%3d SEC.\n%s BOMB\n\nGOOD LUCK!"
          }
        },
        {
          id = 88,
          name = "powerlevel",
          type = "",
          shape = "text",
          x = -28,
          y = 108,
          width = 24,
          height = 16,
          rotation = 0,
          visible = false,
          text = "Lv1",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 90,
          name = "winebomb1",
          type = "",
          shape = "rectangle",
          x = -14,
          y = 284,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 91,
          name = "winebomb2",
          type = "",
          shape = "rectangle",
          x = -14,
          y = 264,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 92,
          name = "winebomb3",
          type = "",
          shape = "rectangle",
          x = -14,
          y = 244,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 93,
          name = "winebomb4",
          type = "",
          shape = "rectangle",
          x = -14,
          y = 224,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 94,
          name = "winebomb5",
          type = "",
          shape = "rectangle",
          x = -14,
          y = 204,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 106,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 28,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 107,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 28,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 108,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 109,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 110,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 100,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 111,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 100,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 112,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 136,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 113,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 136,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 114,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 172,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 115,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 172,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 116,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 208,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 117,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 208,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 118,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 244,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 119,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 244,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 120,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 248,
          y = 280,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 121,
          name = "",
          type = "Polygon",
          shape = "rectangle",
          x = 284,
          y = 280,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["fillcolor"] = "#40000000",
            ["linecolor"] = false
          }
        },
        {
          id = 124,
          name = "ENEMY",
          type = "",
          shape = "text",
          x = 248,
          y = 8,
          width = 68,
          height = 16,
          rotation = 0,
          visible = true,
          text = "ENEMY",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 141,
          name = "enemy1",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 44,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 142,
          name = "enemy2",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 44,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 143,
          name = "enemy3",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 80,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 144,
          name = "enemy4",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 80,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 145,
          name = "enemy5",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 116,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 146,
          name = "enemy6",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 116,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 147,
          name = "enemy7",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 148,
          name = "enemy8",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 149,
          name = "enemy9",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 188,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 150,
          name = "enemy10",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 188,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 151,
          name = "enemy11",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 152,
          name = "enemy12",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 153,
          name = "enemy13",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 260,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 154,
          name = "enemy14",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 260,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 155,
          name = "enemy15",
          type = "UIImage",
          shape = "rectangle",
          x = 264,
          y = 296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 156,
          name = "enemy16",
          type = "UIImage",
          shape = "rectangle",
          x = 300,
          y = 296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 96,
          visible = true,
          properties = {
            ["fitrect"] = true
          }
        },
        {
          id = 98,
          name = "continueprompt",
          type = "",
          shape = "text",
          x = 244,
          y = 176,
          width = 76,
          height = 136,
          rotation = 0,
          visible = false,
          text = "${joy_fire}: CONTINUE\n\n${joy_pausemenu}: SKIP",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          valign = "bottom",
          properties = {}
        },
        {
          id = 99,
          name = "battleprompt",
          type = "",
          shape = "text",
          x = 244,
          y = 176,
          width = 76,
          height = 136,
          rotation = 0,
          visible = false,
          text = "${joy_fire} OR ${joy_pausemenu}:\nEND TALK",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          valign = "bottom",
          properties = {}
        },
        {
          id = 157,
          name = "difficulty",
          type = "",
          shape = "text",
          x = -88,
          y = 296,
          width = 88,
          height = 16,
          rotation = 0,
          visible = true,
          text = "${game_difficulty}",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "index",
      id = 23,
      name = "hud_outer_vert",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["canvasheight"] = 384,
        ["canvaswidth"] = 240,
        ["script"] = "ShmupHUD"
      },
      objects = {
        {
          id = 176,
          name = "screen",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {}
        },
        {
          id = 177,
          name = "score",
          type = "",
          shape = "text",
          x = 4,
          y = -32,
          width = 232,
          height = 32,
          rotation = 0,
          visible = true,
          text = "SCORE000000000 LIFE@001000000",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "SCORE%9d LIFE@%9d"
          }
        },
        {
          id = 181,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 132,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 182,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 116,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 183,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 100,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 84,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 68,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 186,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 52,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 187,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 36,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 188,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 20,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 189,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 4,
          y = -16,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 190,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 84,
          y = 328,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = false,
          properties = {}
        },
        {
          id = 191,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 68,
          y = 328,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = false,
          properties = {}
        },
        {
          id = 192,
          name = "reserves",
          type = "",
          shape = "text",
          x = 68,
          y = 328,
          width = 32,
          height = 16,
          rotation = 0,
          visible = false,
          text = "0",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 193,
          name = "timer",
          type = "",
          shape = "text",
          x = 156,
          y = -16,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          text = "TIME  0:00",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "TIME  %s"
          }
        },
        {
          id = 196,
          name = "powerlevel",
          type = "",
          shape = "text",
          x = 104,
          y = 328,
          width = 24,
          height = 16,
          rotation = 0,
          visible = false,
          text = "Lv1",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 198,
          name = "winebomb1",
          type = "",
          shape = "rectangle",
          x = 12,
          y = 336,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 199,
          name = "winebomb2",
          type = "",
          shape = "rectangle",
          x = 28,
          y = 336,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 200,
          name = "winebomb3",
          type = "",
          shape = "rectangle",
          x = 44,
          y = 336,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 201,
          name = "winebomb4",
          type = "",
          shape = "rectangle",
          x = 60,
          y = 336,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 202,
          name = "winebomb5",
          type = "",
          shape = "rectangle",
          x = 76,
          y = 336,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 233,
          visible = true,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 238,
          name = "difficulty",
          type = "",
          shape = "text",
          x = 148,
          y = -16,
          width = 88,
          height = 16,
          rotation = 0,
          visible = true,
          text = "${game_difficulty}",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "index",
      id = 10,
      name = "results",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["script"] = "ShmupResults"
      },
      objects = {
        {
          id = 100,
          name = "livesicon",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 101,
          name = "reserveicon",
          type = "",
          shape = "rectangle",
          x = 12,
          y = 88,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 102,
          name = "reserveicon2",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 88,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 103,
          name = "timeicon",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 104,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = false,
          properties = {}
        },
        {
          id = 104,
          name = "winebombicon",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 72,
          width = 18,
          height = 12,
          rotation = 270,
          gid = 233,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "reservepoints",
          type = "",
          shape = "text",
          x = 32,
          y = 64,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          text = "NN x points",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "%2d x %d"
          }
        },
        {
          id = 31,
          name = "reservetotal",
          type = "",
          shape = "text",
          x = 144,
          y = 64,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          text = "rsrvtotal",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 32,
          name = "winebombpoints",
          type = "",
          shape = "text",
          x = 32,
          y = 64,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          text = "NN x points",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "%2d x %d"
          }
        },
        {
          id = 33,
          name = "winebombtotal",
          type = "",
          shape = "text",
          x = 152,
          y = 64,
          width = 72,
          height = 16,
          rotation = 0,
          visible = true,
          text = "bombtotal",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 47,
          name = "livespoints",
          type = "",
          shape = "text",
          x = 32,
          y = 184,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          text = "NN x points",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "%2d x %d"
          }
        },
        {
          id = 44,
          name = "livestotal",
          type = "",
          shape = "text",
          x = 144,
          y = 184,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          text = "livestotal",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 45,
          name = "timepoints",
          type = "",
          shape = "text",
          x = 32,
          y = 88,
          width = 96,
          height = 16,
          rotation = 0,
          visible = false,
          text = "NN x points",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textformat"] = "%2d x %d"
          }
        },
        {
          id = 46,
          name = "timetotal",
          type = "",
          shape = "text",
          x = 144,
          y = 88,
          width = 80,
          height = 16,
          rotation = 0,
          visible = false,
          text = "timetotal",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 168,
          name = "lifemedalpoints",
          type = "",
          shape = "text",
          x = 32,
          y = 88,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          text = "No Life Lost",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 169,
          name = "itemmedalpoints",
          type = "",
          shape = "text",
          x = 32,
          y = 112,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          text = "No Item Lost",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 170,
          name = "wingmanmedalpoints",
          type = "",
          shape = "text",
          x = 32,
          y = 136,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          text = "No Team Lost",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 171,
          name = "rescuemedalpoints",
          type = "",
          shape = "text",
          x = 32,
          y = 160,
          width = 112,
          height = 16,
          rotation = 0,
          visible = false,
          text = "No Friend Lost",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 172,
          name = "lifemedaltotal",
          type = "",
          shape = "text",
          x = 152,
          y = 88,
          width = 72,
          height = 16,
          rotation = 0,
          visible = true,
          text = "lifemedalpoints",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 173,
          name = "itemmedaltotal",
          type = "",
          shape = "text",
          x = 152,
          y = 112,
          width = 72,
          height = 16,
          rotation = 0,
          visible = true,
          text = "itemmedalpoints",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 174,
          name = "wingmanmedaltotal",
          type = "",
          shape = "text",
          x = 152,
          y = 136,
          width = 72,
          height = 16,
          rotation = 0,
          visible = true,
          text = "wingmanmedalpoints",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        },
        {
          id = 175,
          name = "rescuemedaltotal",
          type = "",
          shape = "text",
          x = 152,
          y = 160,
          width = 72,
          height = 16,
          rotation = 0,
          visible = false,
          text = "rescuemedalpoints",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {
            ["textformat"] = "%d"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 11,
      name = "pausemenu",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["pausesound"] = "snd/pause.ogg",
        ["script"] = "MenuPause"
      },
      objects = {
        {
          id = 37,
          name = "title",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 216,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "END GAME",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMap",
            ["actionholdtime"] = 1,
            ["fillcolor"] = "#80420000",
            ["linecolor"] = "#ff840002",
            ["nextmap"] = "mainmenu.lua",
            ["pressfillcolor"] = "#ffff8e90",
            ["presslinecolor"] = "#ffff0004"
          }
        },
        {
          id = 36,
          name = "restart_checkpoint",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 136,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESTART AT CHECKPOINT",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "restartCheckpoint",
            ["actionholdtime"] = 1,
            ["fillcolor"] = "#80420000",
            ["linecolor"] = "#ff840002",
            ["pressfillcolor"] = "#ffff8e90",
            ["presslinecolor"] = "#ffff0004"
          }
        },
        {
          id = 35,
          name = "resume",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 96,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESUME",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "togglePause"
          }
        },
        {
          id = 34,
          name = "pause",
          type = "",
          shape = "text",
          x = 0,
          y = 48,
          width = 240,
          height = 16,
          rotation = 0,
          visible = true,
          text = "PAUSE",
          fontfamily = "Lady Radical",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        },
        {
          id = 105,
          name = "holdmessage",
          type = "",
          shape = "text",
          x = 8,
          y = 264,
          width = 224,
          height = 16,
          rotation = 0,
          visible = true,
          text = "Hold 1 second, then release",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 249,
          name = "restart",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 176,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESTART STAGE",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "restartMap",
            ["actionholdtime"] = 1,
            ["fillcolor"] = "#80420000",
            ["linecolor"] = "#ff840002",
            ["pressfillcolor"] = "#ffff8e90",
            ["presslinecolor"] = "#ffff0004"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 12,
      name = "gameovermenu",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["script"] = "MenuGameOver"
      },
      objects = {
        {
          id = 38,
          name = "gameover",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 76,
          width = 192,
          height = 40,
          rotation = 0,
          gid = 200,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "restart",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 144,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESTART STAGE",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "restartMap"
          }
        },
        {
          id = 40,
          name = "title",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 224,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "END GAME",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMap",
            ["nextmap"] = "mainmenu.lua"
          }
        },
        {
          id = 159,
          name = "game_difficulty",
          type = "UIOption",
          shape = "text",
          x = 24,
          y = 184,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "DIFFICULTY:\n${game_difficulty}",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["max"] = 2,
            ["min"] = 1,
            ["valuestr1"] = "NORMAL",
            ["valuestr2"] = "HARD",
            ["valuestr3"] = "DEMONIC"
          }
        },
        {
          id = 248,
          name = "restart_checkpoint",
          type = "UIButton",
          shape = "text",
          x = 24,
          y = 104,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          text = "RESTART AT CHECKPOINT",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "restartCheckpoint"
          }
        }
      }
    }
  }
}
