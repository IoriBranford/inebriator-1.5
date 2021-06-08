return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 18,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 68,
  nextobjectid = 446,
  properties = {
    ["blurupdatespeed"] = 1,
    ["cameraid"] = 2,
    ["difficulty"] = "HARD",
    ["extendinc"] = 15000,
    ["extendpoints"] = 10000,
    ["lifemedalbonus"] = 0,
    ["maxbombs"] = 0,
    ["music"] = "music/caravan.vgm",
    ["nextmap"] = "drunktitle.lua",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 1,
    ["script"] = "DrunkShmupMap",
    ["startbombs"] = 0,
    ["winlivesbonus"] = 1000
  },
  tilesets = {
    {
      name = "town04_f",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 26,
      image = "tilesets/town04_f.png",
      imagewidth = 416,
      imageheight = 384,
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
      wangsets = {
        {
          name = "Terrains",
          tile = -1,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "Ground18",
              probability = 1,
              tile = 18,
              properties = {}
            },
            {
              color = { 0, 255, 0 },
              name = "Ground70",
              probability = 1,
              tile = 70,
              properties = {}
            },
            {
              color = { 0, 0, 255 },
              name = "Ground122",
              probability = 1,
              tile = 122,
              properties = {}
            },
            {
              color = { 255, 119, 0 },
              name = "Ground174",
              probability = 1,
              tile = 174,
              properties = {}
            },
            {
              color = { 0, 233, 255 },
              name = "Ground226",
              probability = 1,
              tile = 226,
              properties = {}
            },
            {
              color = { 255, 0, 216 },
              name = "Ground278",
              probability = 1,
              tile = 278,
              properties = {}
            },
            {
              color = { 255, 255, 0 },
              name = "Ground330",
              probability = 1,
              tile = 330,
              properties = {}
            },
            {
              color = { 160, 0, 255 },
              name = "Ground382",
              probability = 1,
              tile = 382,
              properties = {}
            },
            {
              color = { 0, 255, 161 },
              name = "Ground434",
              probability = 1,
              tile = 434,
              properties = {}
            },
            {
              color = { 255, 168, 168 },
              name = "Ground486",
              probability = 1,
              tile = 486,
              properties = {}
            },
            {
              color = { 180, 168, 255 },
              name = "Ground538",
              probability = 1,
              tile = 538,
              properties = {}
            },
            {
              color = { 150, 255, 167 },
              name = "Ground590",
              probability = 1,
              tile = 590,
              properties = {}
            },
            {
              color = { 142, 120, 72 },
              name = "Water12",
              probability = 1,
              tile = 12,
              properties = {}
            },
            {
              color = { 90, 90, 90 },
              name = "Water15",
              probability = 1,
              tile = 15,
              properties = {}
            },
            {
              color = { 14, 122, 70 },
              name = "Wall27",
              probability = 1,
              tile = 27,
              properties = {}
            },
            {
              color = { 0, 0, 0, 0 },
              name = "Light18",
              probability = 1,
              tile = 30,
              properties = {}
            },
            {
              color = { 241, 73, 144 },
              name = "Light278",
              probability = 1,
              tile = 108,
              properties = {}
            },
            {
              color = { 233, 187, 241 },
              name = "Light226",
              probability = 1,
              tile = 186,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 15, 0, 0, 0, 0 },
              tileid = 0
            },
            {
              wangid = { 0, 0, 0, 15, 0, 15, 0, 0 },
              tileid = 1
            },
            {
              wangid = { 0, 0, 0, 0, 0, 15, 0, 0 },
              tileid = 2
            },
            {
              wangid = { 0, 1, 0, 16, 0, 1, 0, 1 },
              tileid = 3
            },
            {
              wangid = { 0, 1, 0, 16, 0, 16, 0, 1 },
              tileid = 4
            },
            {
              wangid = { 0, 1, 0, 1, 0, 16, 0, 1 },
              tileid = 5
            },
            {
              wangid = { 0, 13, 0, 13, 0, 13, 0, 13 },
              tileid = 12
            },
            {
              wangid = { 0, 14, 0, 14, 0, 14, 0, 14 },
              tileid = 15
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 18
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 19
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 20
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 21
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 22
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 23
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 24
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 25
            },
            {
              wangid = { 0, 15, 0, 15, 0, 0, 0, 0 },
              tileid = 26
            },
            {
              wangid = { 0, 15, 0, 15, 0, 15, 0, 15 },
              tileid = 27
            },
            {
              wangid = { 0, 0, 0, 0, 0, 15, 0, 15 },
              tileid = 28
            },
            {
              wangid = { 0, 16, 0, 16, 0, 1, 0, 1 },
              tileid = 29
            },
            {
              wangid = { 0, 16, 0, 16, 0, 16, 0, 16 },
              tileid = 30
            },
            {
              wangid = { 0, 1, 0, 1, 0, 16, 0, 16 },
              tileid = 31
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 13 },
              tileid = 38
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 14 },
              tileid = 41
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 44
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 45
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 46
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 47
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 48
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 49
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 50
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 51
            },
            {
              wangid = { 0, 15, 0, 0, 0, 0, 0, 0 },
              tileid = 52
            },
            {
              wangid = { 0, 15, 0, 0, 0, 0, 0, 15 },
              tileid = 53
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 0, 15 },
              tileid = 54
            },
            {
              wangid = { 0, 16, 0, 1, 0, 1, 0, 1 },
              tileid = 55
            },
            {
              wangid = { 0, 16, 0, 1, 0, 1, 0, 16 },
              tileid = 56
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 16 },
              tileid = 57
            },
            {
              wangid = { 0, 13, 0, 0, 0, 0, 0, 0 },
              tileid = 64
            },
            {
              wangid = { 0, 14, 0, 0, 0, 0, 0, 0 },
              tileid = 67
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 70
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 71
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 72
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 73
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 74
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 75
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 76
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 77
            },
            {
              wangid = { 0, 6, 0, 17, 0, 6, 0, 6 },
              tileid = 81
            },
            {
              wangid = { 0, 6, 0, 17, 0, 17, 0, 6 },
              tileid = 82
            },
            {
              wangid = { 0, 6, 0, 6, 0, 17, 0, 6 },
              tileid = 83
            },
            {
              wangid = { 0, 0, 0, 0, 0, 13, 0, 0 },
              tileid = 90
            },
            {
              wangid = { 0, 0, 0, 0, 0, 14, 0, 0 },
              tileid = 93
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 96
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 97
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 98
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 99
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 100
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 101
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 102
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 103
            },
            {
              wangid = { 0, 17, 0, 17, 0, 6, 0, 6 },
              tileid = 107
            },
            {
              wangid = { 0, 17, 0, 17, 0, 17, 0, 17 },
              tileid = 108
            },
            {
              wangid = { 0, 6, 0, 6, 0, 17, 0, 17 },
              tileid = 109
            },
            {
              wangid = { 0, 0, 0, 13, 0, 0, 0, 0 },
              tileid = 116
            },
            {
              wangid = { 0, 0, 0, 14, 0, 0, 0, 0 },
              tileid = 119
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 3 },
              tileid = 122
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 123
            },
            {
              wangid = { 0, 2, 0, 3, 0, 2, 0, 2 },
              tileid = 124
            },
            {
              wangid = { 0, 2, 0, 3, 0, 3, 0, 2 },
              tileid = 125
            },
            {
              wangid = { 0, 2, 0, 2, 0, 3, 0, 2 },
              tileid = 126
            },
            {
              wangid = { 0, 3, 0, 3, 0, 2, 0, 2 },
              tileid = 127
            },
            {
              wangid = { 0, 2, 0, 2, 0, 3, 0, 3 },
              tileid = 128
            },
            {
              wangid = { 0, 3, 0, 2, 0, 2, 0, 2 },
              tileid = 129
            },
            {
              wangid = { 0, 17, 0, 6, 0, 6, 0, 6 },
              tileid = 133
            },
            {
              wangid = { 0, 17, 0, 6, 0, 6, 0, 17 },
              tileid = 134
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 17 },
              tileid = 135
            },
            {
              wangid = { 0, 13, 0, 0, 0, 13, 0, 0 },
              tileid = 142
            },
            {
              wangid = { 0, 14, 0, 0, 0, 14, 0, 0 },
              tileid = 145
            },
            {
              wangid = { 0, 3, 0, 2, 0, 2, 0, 3 },
              tileid = 148
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 3 },
              tileid = 149
            },
            {
              wangid = { 0, 3, 0, 3, 0, 3, 0, 2 },
              tileid = 150
            },
            {
              wangid = { 0, 2, 0, 3, 0, 3, 0, 3 },
              tileid = 151
            },
            {
              wangid = { 0, 3, 0, 3, 0, 2, 0, 3 },
              tileid = 152
            },
            {
              wangid = { 0, 3, 0, 2, 0, 3, 0, 3 },
              tileid = 153
            },
            {
              wangid = { 0, 3, 0, 2, 0, 3, 0, 2 },
              tileid = 154
            },
            {
              wangid = { 0, 2, 0, 3, 0, 2, 0, 3 },
              tileid = 155
            },
            {
              wangid = { 0, 5, 0, 18, 0, 5, 0, 5 },
              tileid = 159
            },
            {
              wangid = { 0, 5, 0, 18, 0, 18, 0, 5 },
              tileid = 160
            },
            {
              wangid = { 0, 5, 0, 5, 0, 18, 0, 5 },
              tileid = 161
            },
            {
              wangid = { 0, 0, 0, 13, 0, 0, 0, 13 },
              tileid = 168
            },
            {
              wangid = { 0, 0, 0, 14, 0, 0, 0, 14 },
              tileid = 171
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 4 },
              tileid = 174
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 175
            },
            {
              wangid = { 0, 2, 0, 4, 0, 2, 0, 2 },
              tileid = 176
            },
            {
              wangid = { 0, 2, 0, 4, 0, 4, 0, 2 },
              tileid = 177
            },
            {
              wangid = { 0, 2, 0, 2, 0, 4, 0, 2 },
              tileid = 178
            },
            {
              wangid = { 0, 4, 0, 4, 0, 2, 0, 2 },
              tileid = 179
            },
            {
              wangid = { 0, 2, 0, 2, 0, 4, 0, 4 },
              tileid = 180
            },
            {
              wangid = { 0, 4, 0, 2, 0, 2, 0, 2 },
              tileid = 181
            },
            {
              wangid = { 0, 18, 0, 18, 0, 5, 0, 5 },
              tileid = 185
            },
            {
              wangid = { 0, 18, 0, 18, 0, 18, 0, 18 },
              tileid = 186
            },
            {
              wangid = { 0, 5, 0, 5, 0, 18, 0, 18 },
              tileid = 187
            },
            {
              wangid = { 0, 13, 0, 0, 0, 0, 0, 13 },
              tileid = 194
            },
            {
              wangid = { 0, 14, 0, 0, 0, 0, 0, 14 },
              tileid = 197
            },
            {
              wangid = { 0, 4, 0, 2, 0, 2, 0, 4 },
              tileid = 200
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 4 },
              tileid = 201
            },
            {
              wangid = { 0, 4, 0, 4, 0, 4, 0, 2 },
              tileid = 202
            },
            {
              wangid = { 0, 2, 0, 4, 0, 4, 0, 4 },
              tileid = 203
            },
            {
              wangid = { 0, 4, 0, 4, 0, 2, 0, 4 },
              tileid = 204
            },
            {
              wangid = { 0, 4, 0, 2, 0, 4, 0, 4 },
              tileid = 205
            },
            {
              wangid = { 0, 4, 0, 2, 0, 4, 0, 2 },
              tileid = 206
            },
            {
              wangid = { 0, 2, 0, 4, 0, 2, 0, 4 },
              tileid = 207
            },
            {
              wangid = { 0, 18, 0, 5, 0, 5, 0, 5 },
              tileid = 211
            },
            {
              wangid = { 0, 18, 0, 5, 0, 5, 0, 18 },
              tileid = 212
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 18 },
              tileid = 213
            },
            {
              wangid = { 0, 0, 0, 13, 0, 13, 0, 0 },
              tileid = 220
            },
            {
              wangid = { 0, 0, 0, 14, 0, 14, 0, 0 },
              tileid = 223
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 5 },
              tileid = 226
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 227
            },
            {
              wangid = { 0, 1, 0, 5, 0, 1, 0, 1 },
              tileid = 228
            },
            {
              wangid = { 0, 1, 0, 5, 0, 5, 0, 1 },
              tileid = 229
            },
            {
              wangid = { 0, 1, 0, 1, 0, 5, 0, 1 },
              tileid = 230
            },
            {
              wangid = { 0, 5, 0, 5, 0, 1, 0, 1 },
              tileid = 231
            },
            {
              wangid = { 0, 1, 0, 1, 0, 5, 0, 5 },
              tileid = 232
            },
            {
              wangid = { 0, 5, 0, 1, 0, 1, 0, 1 },
              tileid = 233
            },
            {
              wangid = { 0, 0, 0, 0, 0, 13, 0, 13 },
              tileid = 246
            },
            {
              wangid = { 0, 0, 0, 0, 0, 14, 0, 14 },
              tileid = 249
            },
            {
              wangid = { 0, 5, 0, 1, 0, 1, 0, 5 },
              tileid = 252
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 5 },
              tileid = 253
            },
            {
              wangid = { 0, 5, 0, 5, 0, 5, 0, 1 },
              tileid = 254
            },
            {
              wangid = { 0, 1, 0, 5, 0, 5, 0, 5 },
              tileid = 255
            },
            {
              wangid = { 0, 5, 0, 5, 0, 1, 0, 5 },
              tileid = 256
            },
            {
              wangid = { 0, 5, 0, 1, 0, 5, 0, 5 },
              tileid = 257
            },
            {
              wangid = { 0, 5, 0, 1, 0, 5, 0, 1 },
              tileid = 258
            },
            {
              wangid = { 0, 1, 0, 5, 0, 1, 0, 5 },
              tileid = 259
            },
            {
              wangid = { 0, 13, 0, 13, 0, 0, 0, 0 },
              tileid = 272
            },
            {
              wangid = { 0, 14, 0, 14, 0, 0, 0, 0 },
              tileid = 275
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 6 },
              tileid = 278
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 279
            },
            {
              wangid = { 0, 1, 0, 6, 0, 1, 0, 1 },
              tileid = 280
            },
            {
              wangid = { 0, 1, 0, 6, 0, 6, 0, 1 },
              tileid = 281
            },
            {
              wangid = { 0, 1, 0, 1, 0, 6, 0, 1 },
              tileid = 282
            },
            {
              wangid = { 0, 6, 0, 6, 0, 1, 0, 1 },
              tileid = 283
            },
            {
              wangid = { 0, 1, 0, 1, 0, 6, 0, 6 },
              tileid = 284
            },
            {
              wangid = { 0, 6, 0, 1, 0, 1, 0, 1 },
              tileid = 285
            },
            {
              wangid = { 0, 13, 0, 0, 0, 13, 0, 13 },
              tileid = 298
            },
            {
              wangid = { 0, 14, 0, 0, 0, 14, 0, 14 },
              tileid = 301
            },
            {
              wangid = { 0, 6, 0, 1, 0, 1, 0, 6 },
              tileid = 304
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 6 },
              tileid = 305
            },
            {
              wangid = { 0, 6, 0, 6, 0, 6, 0, 1 },
              tileid = 306
            },
            {
              wangid = { 0, 1, 0, 6, 0, 6, 0, 6 },
              tileid = 307
            },
            {
              wangid = { 0, 6, 0, 6, 0, 1, 0, 6 },
              tileid = 308
            },
            {
              wangid = { 0, 6, 0, 1, 0, 6, 0, 6 },
              tileid = 309
            },
            {
              wangid = { 0, 6, 0, 1, 0, 6, 0, 1 },
              tileid = 310
            },
            {
              wangid = { 0, 1, 0, 6, 0, 1, 0, 6 },
              tileid = 311
            },
            {
              wangid = { 0, 13, 0, 13, 0, 0, 0, 13 },
              tileid = 324
            },
            {
              wangid = { 0, 14, 0, 14, 0, 0, 0, 14 },
              tileid = 327
            },
            {
              wangid = { 0, 7, 0, 7, 0, 7, 0, 7 },
              tileid = 330
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 331
            },
            {
              wangid = { 0, 1, 0, 7, 0, 1, 0, 1 },
              tileid = 332
            },
            {
              wangid = { 0, 1, 0, 7, 0, 7, 0, 1 },
              tileid = 333
            },
            {
              wangid = { 0, 1, 0, 1, 0, 7, 0, 1 },
              tileid = 334
            },
            {
              wangid = { 0, 7, 0, 7, 0, 1, 0, 1 },
              tileid = 335
            },
            {
              wangid = { 0, 1, 0, 1, 0, 7, 0, 7 },
              tileid = 336
            },
            {
              wangid = { 0, 7, 0, 1, 0, 1, 0, 1 },
              tileid = 337
            },
            {
              wangid = { 0, 0, 0, 13, 0, 13, 0, 13 },
              tileid = 350
            },
            {
              wangid = { 0, 0, 0, 14, 0, 14, 0, 14 },
              tileid = 353
            },
            {
              wangid = { 0, 7, 0, 1, 0, 1, 0, 7 },
              tileid = 356
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 7 },
              tileid = 357
            },
            {
              wangid = { 0, 7, 0, 7, 0, 7, 0, 1 },
              tileid = 358
            },
            {
              wangid = { 0, 1, 0, 7, 0, 7, 0, 7 },
              tileid = 359
            },
            {
              wangid = { 0, 7, 0, 7, 0, 1, 0, 7 },
              tileid = 360
            },
            {
              wangid = { 0, 7, 0, 1, 0, 7, 0, 7 },
              tileid = 361
            },
            {
              wangid = { 0, 7, 0, 1, 0, 7, 0, 1 },
              tileid = 362
            },
            {
              wangid = { 0, 1, 0, 7, 0, 1, 0, 7 },
              tileid = 363
            },
            {
              wangid = { 0, 13, 0, 13, 0, 13, 0, 0 },
              tileid = 376
            },
            {
              wangid = { 0, 14, 0, 14, 0, 14, 0, 0 },
              tileid = 379
            },
            {
              wangid = { 0, 8, 0, 8, 0, 8, 0, 8 },
              tileid = 382
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 383
            },
            {
              wangid = { 0, 1, 0, 8, 0, 1, 0, 1 },
              tileid = 384
            },
            {
              wangid = { 0, 1, 0, 8, 0, 8, 0, 1 },
              tileid = 385
            },
            {
              wangid = { 0, 1, 0, 1, 0, 8, 0, 1 },
              tileid = 386
            },
            {
              wangid = { 0, 8, 0, 8, 0, 1, 0, 1 },
              tileid = 387
            },
            {
              wangid = { 0, 1, 0, 1, 0, 8, 0, 8 },
              tileid = 388
            },
            {
              wangid = { 0, 8, 0, 1, 0, 1, 0, 1 },
              tileid = 389
            },
            {
              wangid = { 0, 8, 0, 1, 0, 1, 0, 8 },
              tileid = 408
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 8 },
              tileid = 409
            },
            {
              wangid = { 0, 8, 0, 8, 0, 8, 0, 1 },
              tileid = 410
            },
            {
              wangid = { 0, 1, 0, 8, 0, 8, 0, 8 },
              tileid = 411
            },
            {
              wangid = { 0, 8, 0, 8, 0, 1, 0, 8 },
              tileid = 412
            },
            {
              wangid = { 0, 8, 0, 1, 0, 8, 0, 8 },
              tileid = 413
            },
            {
              wangid = { 0, 8, 0, 1, 0, 8, 0, 1 },
              tileid = 414
            },
            {
              wangid = { 0, 1, 0, 8, 0, 1, 0, 8 },
              tileid = 415
            },
            {
              wangid = { 0, 9, 0, 9, 0, 9, 0, 9 },
              tileid = 434
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 435
            },
            {
              wangid = { 0, 1, 0, 9, 0, 1, 0, 1 },
              tileid = 436
            },
            {
              wangid = { 0, 1, 0, 9, 0, 9, 0, 1 },
              tileid = 437
            },
            {
              wangid = { 0, 1, 0, 1, 0, 9, 0, 1 },
              tileid = 438
            },
            {
              wangid = { 0, 9, 0, 9, 0, 1, 0, 1 },
              tileid = 439
            },
            {
              wangid = { 0, 1, 0, 1, 0, 9, 0, 9 },
              tileid = 440
            },
            {
              wangid = { 0, 9, 0, 1, 0, 1, 0, 1 },
              tileid = 441
            },
            {
              wangid = { 0, 9, 0, 1, 0, 1, 0, 9 },
              tileid = 460
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 9 },
              tileid = 461
            },
            {
              wangid = { 0, 9, 0, 9, 0, 9, 0, 1 },
              tileid = 462
            },
            {
              wangid = { 0, 1, 0, 9, 0, 9, 0, 9 },
              tileid = 463
            },
            {
              wangid = { 0, 9, 0, 9, 0, 1, 0, 9 },
              tileid = 464
            },
            {
              wangid = { 0, 9, 0, 1, 0, 9, 0, 9 },
              tileid = 465
            },
            {
              wangid = { 0, 9, 0, 1, 0, 9, 0, 1 },
              tileid = 466
            },
            {
              wangid = { 0, 1, 0, 9, 0, 1, 0, 9 },
              tileid = 467
            },
            {
              wangid = { 0, 10, 0, 10, 0, 10, 0, 10 },
              tileid = 486
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 487
            },
            {
              wangid = { 0, 1, 0, 10, 0, 1, 0, 1 },
              tileid = 488
            },
            {
              wangid = { 0, 1, 0, 10, 0, 10, 0, 1 },
              tileid = 489
            },
            {
              wangid = { 0, 1, 0, 1, 0, 10, 0, 1 },
              tileid = 490
            },
            {
              wangid = { 0, 10, 0, 10, 0, 1, 0, 1 },
              tileid = 491
            },
            {
              wangid = { 0, 1, 0, 1, 0, 10, 0, 10 },
              tileid = 492
            },
            {
              wangid = { 0, 10, 0, 1, 0, 1, 0, 1 },
              tileid = 493
            },
            {
              wangid = { 0, 10, 0, 1, 0, 1, 0, 10 },
              tileid = 512
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 10 },
              tileid = 513
            },
            {
              wangid = { 0, 10, 0, 10, 0, 10, 0, 1 },
              tileid = 514
            },
            {
              wangid = { 0, 1, 0, 10, 0, 10, 0, 10 },
              tileid = 515
            },
            {
              wangid = { 0, 10, 0, 10, 0, 1, 0, 10 },
              tileid = 516
            },
            {
              wangid = { 0, 10, 0, 1, 0, 10, 0, 10 },
              tileid = 517
            },
            {
              wangid = { 0, 10, 0, 1, 0, 10, 0, 1 },
              tileid = 518
            },
            {
              wangid = { 0, 1, 0, 10, 0, 1, 0, 10 },
              tileid = 519
            },
            {
              wangid = { 0, 11, 0, 11, 0, 11, 0, 11 },
              tileid = 538
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 1 },
              tileid = 539
            },
            {
              wangid = { 0, 1, 0, 11, 0, 1, 0, 1 },
              tileid = 540
            },
            {
              wangid = { 0, 1, 0, 11, 0, 11, 0, 1 },
              tileid = 541
            },
            {
              wangid = { 0, 1, 0, 1, 0, 11, 0, 1 },
              tileid = 542
            },
            {
              wangid = { 0, 11, 0, 11, 0, 1, 0, 1 },
              tileid = 543
            },
            {
              wangid = { 0, 1, 0, 1, 0, 11, 0, 11 },
              tileid = 544
            },
            {
              wangid = { 0, 11, 0, 1, 0, 1, 0, 1 },
              tileid = 545
            },
            {
              wangid = { 0, 11, 0, 1, 0, 1, 0, 11 },
              tileid = 564
            },
            {
              wangid = { 0, 1, 0, 1, 0, 1, 0, 11 },
              tileid = 565
            },
            {
              wangid = { 0, 11, 0, 11, 0, 11, 0, 1 },
              tileid = 566
            },
            {
              wangid = { 0, 1, 0, 11, 0, 11, 0, 11 },
              tileid = 567
            },
            {
              wangid = { 0, 11, 0, 11, 0, 1, 0, 11 },
              tileid = 568
            },
            {
              wangid = { 0, 11, 0, 1, 0, 11, 0, 11 },
              tileid = 569
            },
            {
              wangid = { 0, 11, 0, 1, 0, 11, 0, 1 },
              tileid = 570
            },
            {
              wangid = { 0, 1, 0, 11, 0, 1, 0, 11 },
              tileid = 571
            },
            {
              wangid = { 0, 12, 0, 12, 0, 12, 0, 12 },
              tileid = 590
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 2 },
              tileid = 591
            },
            {
              wangid = { 0, 2, 0, 12, 0, 2, 0, 2 },
              tileid = 592
            },
            {
              wangid = { 0, 2, 0, 12, 0, 12, 0, 2 },
              tileid = 593
            },
            {
              wangid = { 0, 2, 0, 2, 0, 12, 0, 2 },
              tileid = 594
            },
            {
              wangid = { 0, 12, 0, 12, 0, 2, 0, 2 },
              tileid = 595
            },
            {
              wangid = { 0, 2, 0, 2, 0, 12, 0, 12 },
              tileid = 596
            },
            {
              wangid = { 0, 12, 0, 2, 0, 2, 0, 2 },
              tileid = 597
            },
            {
              wangid = { 0, 12, 0, 2, 0, 2, 0, 12 },
              tileid = 616
            },
            {
              wangid = { 0, 2, 0, 2, 0, 2, 0, 12 },
              tileid = 617
            },
            {
              wangid = { 0, 12, 0, 12, 0, 12, 0, 2 },
              tileid = 618
            },
            {
              wangid = { 0, 2, 0, 12, 0, 12, 0, 12 },
              tileid = 619
            },
            {
              wangid = { 0, 12, 0, 12, 0, 2, 0, 12 },
              tileid = 620
            },
            {
              wangid = { 0, 12, 0, 2, 0, 12, 0, 12 },
              tileid = 621
            },
            {
              wangid = { 0, 12, 0, 2, 0, 12, 0, 2 },
              tileid = 622
            },
            {
              wangid = { 0, 2, 0, 12, 0, 2, 0, 12 },
              tileid = 623
            }
          }
        }
      },
      tilecount = 624,
      tiles = {
        {
          id = 12,
          animation = {
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
              tileid = 13,
              duration = 125
            }
          }
        },
        {
          id = 15,
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 19,
          probability = 0
        },
        {
          id = 26,
          type = "EnemyBounds"
        },
        {
          id = 27,
          type = "EnemyBounds"
        },
        {
          id = 28,
          type = "EnemyBounds"
        },
        {
          id = 38,
          animation = {
            {
              tileid = 38,
              duration = 125
            },
            {
              tileid = 39,
              duration = 125
            },
            {
              tileid = 40,
              duration = 125
            },
            {
              tileid = 39,
              duration = 125
            }
          }
        },
        {
          id = 41,
          animation = {
            {
              tileid = 41,
              duration = 125
            },
            {
              tileid = 42,
              duration = 125
            },
            {
              tileid = 43,
              duration = 125
            },
            {
              tileid = 42,
              duration = 125
            }
          }
        },
        {
          id = 64,
          animation = {
            {
              tileid = 64,
              duration = 125
            },
            {
              tileid = 65,
              duration = 125
            },
            {
              tileid = 66,
              duration = 125
            },
            {
              tileid = 65,
              duration = 125
            }
          }
        },
        {
          id = 67,
          animation = {
            {
              tileid = 67,
              duration = 125
            },
            {
              tileid = 68,
              duration = 125
            },
            {
              tileid = 69,
              duration = 125
            },
            {
              tileid = 68,
              duration = 125
            }
          }
        },
        {
          id = 71,
          probability = 0
        },
        {
          id = 84,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 85,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 86,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 87,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 88,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 89,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 90,
          animation = {
            {
              tileid = 90,
              duration = 125
            },
            {
              tileid = 91,
              duration = 125
            },
            {
              tileid = 92,
              duration = 125
            },
            {
              tileid = 91,
              duration = 125
            }
          }
        },
        {
          id = 93,
          animation = {
            {
              tileid = 93,
              duration = 125
            },
            {
              tileid = 94,
              duration = 125
            },
            {
              tileid = 95,
              duration = 125
            },
            {
              tileid = 94,
              duration = 125
            }
          }
        },
        {
          id = 110,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 111,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 112,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 113,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 114,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 115,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 116,
          animation = {
            {
              tileid = 116,
              duration = 125
            },
            {
              tileid = 117,
              duration = 125
            },
            {
              tileid = 118,
              duration = 125
            },
            {
              tileid = 117,
              duration = 125
            }
          }
        },
        {
          id = 119,
          animation = {
            {
              tileid = 119,
              duration = 125
            },
            {
              tileid = 120,
              duration = 125
            },
            {
              tileid = 121,
              duration = 125
            },
            {
              tileid = 120,
              duration = 125
            }
          }
        },
        {
          id = 123,
          probability = 0
        },
        {
          id = 130,
          type = "EnemyBounds"
        },
        {
          id = 136,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 137,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 138,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 139,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 140,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 141,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 142,
          animation = {
            {
              tileid = 142,
              duration = 125
            },
            {
              tileid = 143,
              duration = 125
            },
            {
              tileid = 144,
              duration = 125
            },
            {
              tileid = 143,
              duration = 125
            }
          }
        },
        {
          id = 145,
          animation = {
            {
              tileid = 145,
              duration = 125
            },
            {
              tileid = 146,
              duration = 125
            },
            {
              tileid = 147,
              duration = 125
            },
            {
              tileid = 146,
              duration = 125
            }
          }
        },
        {
          id = 162,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 163,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 164,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 165,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 168,
          animation = {
            {
              tileid = 168,
              duration = 125
            },
            {
              tileid = 169,
              duration = 125
            },
            {
              tileid = 170,
              duration = 125
            },
            {
              tileid = 169,
              duration = 125
            }
          }
        },
        {
          id = 171,
          animation = {
            {
              tileid = 171,
              duration = 125
            },
            {
              tileid = 172,
              duration = 125
            },
            {
              tileid = 173,
              duration = 125
            },
            {
              tileid = 172,
              duration = 125
            }
          }
        },
        {
          id = 175,
          probability = 0
        },
        {
          id = 183,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 184,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 188,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 189,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 190,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 191,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 4,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 192,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 194,
          animation = {
            {
              tileid = 194,
              duration = 125
            },
            {
              tileid = 195,
              duration = 125
            },
            {
              tileid = 196,
              duration = 125
            },
            {
              tileid = 195,
              duration = 125
            }
          }
        },
        {
          id = 197,
          animation = {
            {
              tileid = 197,
              duration = 125
            },
            {
              tileid = 198,
              duration = 125
            },
            {
              tileid = 199,
              duration = 125
            },
            {
              tileid = 198,
              duration = 125
            }
          }
        },
        {
          id = 214,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 215,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 216,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 220,
          animation = {
            {
              tileid = 220,
              duration = 125
            },
            {
              tileid = 221,
              duration = 125
            },
            {
              tileid = 222,
              duration = 125
            },
            {
              tileid = 221,
              duration = 125
            }
          }
        },
        {
          id = 223,
          animation = {
            {
              tileid = 223,
              duration = 125
            },
            {
              tileid = 224,
              duration = 125
            },
            {
              tileid = 225,
              duration = 125
            },
            {
              tileid = 224,
              duration = 125
            }
          }
        },
        {
          id = 227,
          probability = 0
        },
        {
          id = 243,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 244,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 245,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 246,
          animation = {
            {
              tileid = 246,
              duration = 125
            },
            {
              tileid = 247,
              duration = 125
            },
            {
              tileid = 248,
              duration = 125
            },
            {
              tileid = 247,
              duration = 125
            }
          }
        },
        {
          id = 249,
          animation = {
            {
              tileid = 249,
              duration = 125
            },
            {
              tileid = 250,
              duration = 125
            },
            {
              tileid = 251,
              duration = 125
            },
            {
              tileid = 250,
              duration = 125
            }
          }
        },
        {
          id = 266,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 267,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 268,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 272,
          animation = {
            {
              tileid = 272,
              duration = 125
            },
            {
              tileid = 273,
              duration = 125
            },
            {
              tileid = 274,
              duration = 125
            },
            {
              tileid = 273,
              duration = 125
            }
          }
        },
        {
          id = 275,
          animation = {
            {
              tileid = 275,
              duration = 125
            },
            {
              tileid = 276,
              duration = 125
            },
            {
              tileid = 277,
              duration = 125
            },
            {
              tileid = 276,
              duration = 125
            }
          }
        },
        {
          id = 279,
          probability = 0
        },
        {
          id = 298,
          animation = {
            {
              tileid = 298,
              duration = 125
            },
            {
              tileid = 299,
              duration = 125
            },
            {
              tileid = 300,
              duration = 125
            },
            {
              tileid = 299,
              duration = 125
            }
          }
        },
        {
          id = 301,
          animation = {
            {
              tileid = 301,
              duration = 125
            },
            {
              tileid = 302,
              duration = 125
            },
            {
              tileid = 303,
              duration = 125
            },
            {
              tileid = 302,
              duration = 125
            }
          }
        },
        {
          id = 318,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 319,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 320,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 321,
          type = "EnemyBounds"
        },
        {
          id = 324,
          animation = {
            {
              tileid = 324,
              duration = 125
            },
            {
              tileid = 325,
              duration = 125
            },
            {
              tileid = 326,
              duration = 125
            },
            {
              tileid = 325,
              duration = 125
            }
          }
        },
        {
          id = 327,
          animation = {
            {
              tileid = 327,
              duration = 125
            },
            {
              tileid = 328,
              duration = 125
            },
            {
              tileid = 329,
              duration = 125
            },
            {
              tileid = 328,
              duration = 125
            }
          }
        },
        {
          id = 331,
          probability = 0
        },
        {
          id = 344,
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
            objects = {}
          }
        },
        {
          id = 345,
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
            objects = {}
          }
        },
        {
          id = 346,
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
            objects = {}
          }
        },
        {
          id = 350,
          animation = {
            {
              tileid = 350,
              duration = 125
            },
            {
              tileid = 351,
              duration = 125
            },
            {
              tileid = 352,
              duration = 125
            },
            {
              tileid = 351,
              duration = 125
            }
          }
        },
        {
          id = 353,
          animation = {
            {
              tileid = 353,
              duration = 125
            },
            {
              tileid = 354,
              duration = 125
            },
            {
              tileid = 355,
              duration = 125
            },
            {
              tileid = 354,
              duration = 125
            }
          }
        },
        {
          id = 370,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 371,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 372,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 376,
          animation = {
            {
              tileid = 376,
              duration = 125
            },
            {
              tileid = 377,
              duration = 125
            },
            {
              tileid = 378,
              duration = 125
            },
            {
              tileid = 377,
              duration = 125
            }
          }
        },
        {
          id = 379,
          animation = {
            {
              tileid = 379,
              duration = 125
            },
            {
              tileid = 380,
              duration = 125
            },
            {
              tileid = 381,
              duration = 125
            },
            {
              tileid = 380,
              duration = 125
            }
          }
        },
        {
          id = 383,
          probability = 0
        },
        {
          id = 396,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 397,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 398,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 422,
          type = "EnemyBounds"
        },
        {
          id = 423,
          type = "EnemyBounds"
        },
        {
          id = 424,
          type = "EnemyBounds"
        },
        {
          id = 435,
          probability = 0
        },
        {
          id = 448,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 449,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 450,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 468,
          type = "EnemyBounds"
        },
        {
          id = 469,
          type = "EnemyBounds"
        },
        {
          id = 470,
          type = "EnemyBounds"
        },
        {
          id = 480,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 481,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 485,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 487,
          probability = 0
        },
        {
          id = 506,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 507,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 508,
          type = "EnemyBounds"
        },
        {
          id = 509,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 510,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 511,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 523,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 524,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 525,
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
                id = 2,
                name = "",
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 532,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 533,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 536,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 537,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 4,
                y = 8,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 538,
          type = "EnemyBounds"
        },
        {
          id = 539,
          probability = 0
        },
        {
          id = 540,
          type = "EnemyBounds"
        },
        {
          id = 541,
          type = "EnemyBounds"
        },
        {
          id = 542,
          type = "EnemyBounds"
        },
        {
          id = 543,
          type = "EnemyBounds"
        },
        {
          id = 544,
          type = "EnemyBounds"
        },
        {
          id = 545,
          type = "EnemyBounds"
        },
        {
          id = 546,
          type = "EnemyBounds"
        },
        {
          id = 547,
          type = "EnemyBounds"
        },
        {
          id = 548,
          type = "EnemyBounds"
        },
        {
          id = 549,
          type = "EnemyBounds"
        },
        {
          id = 550,
          type = "EnemyBounds"
        },
        {
          id = 551,
          type = "EnemyBounds"
        },
        {
          id = 558,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 559,
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
                type = "EnemyBounds",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 560,
          type = "EnemyBounds"
        },
        {
          id = 564,
          type = "EnemyBounds"
        },
        {
          id = 565,
          type = "EnemyBounds"
        },
        {
          id = 566,
          type = "EnemyBounds"
        },
        {
          id = 567,
          type = "EnemyBounds"
        },
        {
          id = 568,
          type = "EnemyBounds"
        },
        {
          id = 569,
          type = "EnemyBounds"
        },
        {
          id = 570,
          type = "EnemyBounds"
        },
        {
          id = 571,
          type = "EnemyBounds"
        },
        {
          id = 584,
          type = "EnemyBounds",
          animation = {
            {
              tileid = 584,
              duration = 125
            },
            {
              tileid = 587,
              duration = 125
            },
            {
              tileid = 610,
              duration = 125
            },
            {
              tileid = 613,
              duration = 125
            }
          }
        },
        {
          id = 585,
          type = "EnemyBounds",
          animation = {
            {
              tileid = 585,
              duration = 125
            },
            {
              tileid = 588,
              duration = 125
            },
            {
              tileid = 611,
              duration = 125
            },
            {
              tileid = 614,
              duration = 125
            }
          }
        },
        {
          id = 586,
          animation = {
            {
              tileid = 586,
              duration = 125
            },
            {
              tileid = 589,
              duration = 125
            },
            {
              tileid = 612,
              duration = 125
            },
            {
              tileid = 615,
              duration = 125
            }
          }
        },
        {
          id = 591,
          probability = 0
        }
      }
    },
    {
      name = "wineguards",
      firstgid = 625,
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 18,
      image = "tilesets/wineguards.png",
      imagewidth = 432,
      imageheight = 160,
      objectalignment = "topleft",
      tileoffset = {
        x = -12,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      wangsets = {},
      tilecount = 90,
      tiles = {
        {
          id = 0,
          properties = {
            ["tilename"] = "Knight0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
            }
          }
        },
        {
          id = 1,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 2,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 3,
          properties = {
            ["tilename"] = "Pawn0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 3,
              duration = 100
            },
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 5,
              duration = 100
            }
          }
        },
        {
          id = 4,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 5,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 6,
          properties = {
            ["tilename"] = "Rook0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 6,
              duration = 100
            },
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 8,
              duration = 100
            }
          }
        },
        {
          id = 7,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 8,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 9,
          properties = {
            ["tilename"] = "Bishop0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
          id = 10,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 11,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 12,
          properties = {
            ["tilename"] = "King0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
            }
          }
        },
        {
          id = 13,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 14,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 15,
          properties = {
            ["tilename"] = "Queen0"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 15,
              duration = 100
            },
            {
              tileid = 16,
              duration = 100
            },
            {
              tileid = 17,
              duration = 100
            }
          }
        },
        {
          id = 16,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 17,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 18,
          properties = {
            ["tilename"] = "Knight1"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 18,
              duration = 100
            },
            {
              tileid = 19,
              duration = 100
            },
            {
              tileid = 20,
              duration = 100
            }
          }
        },
        {
          id = 19,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 20,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 21,
          properties = {
            ["tilename"] = "Pawn1"
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
                name = "hull",
                type = "Fixture",
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 21,
              duration = 100
            },
            {
              tileid = 22,
              duration = 100
            },
            {
              tileid = 23,
              duration = 100
            }
          }
        },
        {
          id = 22,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 23,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 24,
          properties = {
            ["tilename"] = "Rook1"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 24,
              duration = 100
            },
            {
              tileid = 25,
              duration = 100
            },
            {
              tileid = 26,
              duration = 100
            }
          }
        },
        {
          id = 25,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 26,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 27,
          properties = {
            ["tilename"] = "Bishop1"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 27,
              duration = 100
            },
            {
              tileid = 28,
              duration = 100
            },
            {
              tileid = 29,
              duration = 100
            }
          }
        },
        {
          id = 28,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 29,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 30,
          properties = {
            ["tilename"] = "King1"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 30,
              duration = 100
            },
            {
              tileid = 31,
              duration = 100
            },
            {
              tileid = 32,
              duration = 100
            }
          }
        },
        {
          id = 31,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 32,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 33,
          properties = {
            ["tilename"] = "Queen1"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 33,
              duration = 100
            },
            {
              tileid = 34,
              duration = 100
            },
            {
              tileid = 35,
              duration = 100
            }
          }
        },
        {
          id = 34,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 35,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 36,
          properties = {
            ["tilename"] = "Knight2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 36,
              duration = 100
            },
            {
              tileid = 37,
              duration = 100
            },
            {
              tileid = 38,
              duration = 100
            }
          }
        },
        {
          id = 37,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 38,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 39,
          properties = {
            ["tilename"] = "Pawn2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 39,
              duration = 100
            },
            {
              tileid = 40,
              duration = 100
            },
            {
              tileid = 41,
              duration = 100
            }
          }
        },
        {
          id = 40,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 41,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 42,
          properties = {
            ["tilename"] = "Rook2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 42,
              duration = 100
            },
            {
              tileid = 43,
              duration = 100
            },
            {
              tileid = 44,
              duration = 100
            }
          }
        },
        {
          id = 43,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 44,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 45,
          properties = {
            ["tilename"] = "Bishop2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 45,
              duration = 100
            },
            {
              tileid = 46,
              duration = 100
            },
            {
              tileid = 47,
              duration = 100
            }
          }
        },
        {
          id = 46,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 47,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 48,
          properties = {
            ["tilename"] = "King2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 48,
              duration = 100
            },
            {
              tileid = 49,
              duration = 100
            },
            {
              tileid = 50,
              duration = 100
            }
          }
        },
        {
          id = 49,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 50,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 51,
          properties = {
            ["tilename"] = "Queen2"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 51,
              duration = 100
            },
            {
              tileid = 52,
              duration = 100
            },
            {
              tileid = 53,
              duration = 100
            }
          }
        },
        {
          id = 52,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 53,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 54,
          properties = {
            ["tilename"] = "Knight3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 54,
              duration = 100
            },
            {
              tileid = 55,
              duration = 100
            },
            {
              tileid = 56,
              duration = 100
            }
          }
        },
        {
          id = 55,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 56,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 57,
          properties = {
            ["tilename"] = "Pawn3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 57,
              duration = 100
            },
            {
              tileid = 58,
              duration = 100
            },
            {
              tileid = 59,
              duration = 100
            }
          }
        },
        {
          id = 58,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 59,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 60,
          properties = {
            ["tilename"] = "Rook3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 60,
              duration = 100
            },
            {
              tileid = 61,
              duration = 100
            },
            {
              tileid = 62,
              duration = 100
            }
          }
        },
        {
          id = 61,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 62,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 63,
          properties = {
            ["tilename"] = "Bishop3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 63,
              duration = 100
            },
            {
              tileid = 64,
              duration = 100
            },
            {
              tileid = 65,
              duration = 100
            }
          }
        },
        {
          id = 64,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 65,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 66,
          properties = {
            ["tilename"] = "King3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 66,
              duration = 100
            },
            {
              tileid = 67,
              duration = 100
            },
            {
              tileid = 68,
              duration = 100
            }
          }
        },
        {
          id = 67,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 68,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 69,
          properties = {
            ["tilename"] = "Queen3"
          },
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
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
              tileid = 69,
              duration = 100
            },
            {
              tileid = 70,
              duration = 100
            },
            {
              tileid = 71,
              duration = 100
            }
          }
        },
        {
          id = 70,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 71,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 6,
                y = 8,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 72,
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
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 12,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 75,
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
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 13,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 78,
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
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 12,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 81,
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
                id = 2,
                name = "",
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 84,
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
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        },
        {
          id = 87,
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
                type = "CollisionEnemy",
                shape = "rectangle",
                x = 0,
                y = 10,
                width = 24,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
              }
            }
          }
        }
      }
    },
    {
      name = "winecivilians",
      firstgid = 715,
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 24,
      image = "tilesets/winecivilians.png",
      imagewidth = 576,
      imageheight = 128,
      objectalignment = "topleft",
      tileoffset = {
        x = -12,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["colname00"] = "waiter",
        ["colname03"] = "waitress",
        ["colname06"] = "guest_grandpa",
        ["colname09"] = "guest_grandma",
        ["colname12"] = "guest_dad",
        ["colname15"] = "guest_mom",
        ["colname18"] = "guest_son",
        ["colname21"] = "guest_daughter",
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      wangsets = {},
      tilecount = 96,
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
                id = 2,
                name = "",
                type = "CollisionCivilian",
                shape = "rectangle",
                x = 6,
                y = 12,
                width = 12,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = false
                }
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
            }
          }
        },
        {
          id = 3,
          animation = {
            {
              tileid = 3,
              duration = 100
            },
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 5,
              duration = 100
            }
          }
        },
        {
          id = 6,
          animation = {
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 8,
              duration = 100
            }
          }
        },
        {
          id = 9,
          animation = {
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
          id = 12,
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
            }
          }
        },
        {
          id = 15,
          animation = {
            {
              tileid = 15,
              duration = 100
            },
            {
              tileid = 16,
              duration = 100
            },
            {
              tileid = 17,
              duration = 100
            }
          }
        },
        {
          id = 18,
          animation = {
            {
              tileid = 18,
              duration = 100
            },
            {
              tileid = 19,
              duration = 100
            },
            {
              tileid = 20,
              duration = 100
            }
          }
        },
        {
          id = 21,
          animation = {
            {
              tileid = 21,
              duration = 100
            },
            {
              tileid = 22,
              duration = 100
            },
            {
              tileid = 23,
              duration = 100
            }
          }
        },
        {
          id = 24,
          animation = {
            {
              tileid = 24,
              duration = 100
            },
            {
              tileid = 25,
              duration = 100
            },
            {
              tileid = 26,
              duration = 100
            }
          }
        },
        {
          id = 27,
          animation = {
            {
              tileid = 27,
              duration = 100
            },
            {
              tileid = 28,
              duration = 100
            },
            {
              tileid = 29,
              duration = 100
            }
          }
        },
        {
          id = 30,
          animation = {
            {
              tileid = 30,
              duration = 100
            },
            {
              tileid = 31,
              duration = 100
            },
            {
              tileid = 32,
              duration = 100
            }
          }
        },
        {
          id = 33,
          animation = {
            {
              tileid = 33,
              duration = 100
            },
            {
              tileid = 34,
              duration = 100
            },
            {
              tileid = 35,
              duration = 100
            }
          }
        },
        {
          id = 36,
          animation = {
            {
              tileid = 36,
              duration = 100
            },
            {
              tileid = 37,
              duration = 100
            },
            {
              tileid = 38,
              duration = 100
            }
          }
        },
        {
          id = 39,
          animation = {
            {
              tileid = 39,
              duration = 100
            },
            {
              tileid = 40,
              duration = 100
            },
            {
              tileid = 41,
              duration = 100
            }
          }
        },
        {
          id = 42,
          animation = {
            {
              tileid = 42,
              duration = 100
            },
            {
              tileid = 43,
              duration = 100
            },
            {
              tileid = 44,
              duration = 100
            }
          }
        },
        {
          id = 45,
          animation = {
            {
              tileid = 45,
              duration = 100
            },
            {
              tileid = 46,
              duration = 100
            },
            {
              tileid = 47,
              duration = 100
            }
          }
        },
        {
          id = 48,
          animation = {
            {
              tileid = 48,
              duration = 100
            },
            {
              tileid = 49,
              duration = 100
            },
            {
              tileid = 50,
              duration = 100
            }
          }
        },
        {
          id = 51,
          animation = {
            {
              tileid = 51,
              duration = 100
            },
            {
              tileid = 52,
              duration = 100
            },
            {
              tileid = 53,
              duration = 100
            }
          }
        },
        {
          id = 54,
          animation = {
            {
              tileid = 54,
              duration = 100
            },
            {
              tileid = 55,
              duration = 100
            },
            {
              tileid = 56,
              duration = 100
            }
          }
        },
        {
          id = 57,
          animation = {
            {
              tileid = 57,
              duration = 100
            },
            {
              tileid = 58,
              duration = 100
            },
            {
              tileid = 59,
              duration = 100
            }
          }
        },
        {
          id = 60,
          animation = {
            {
              tileid = 60,
              duration = 100
            },
            {
              tileid = 61,
              duration = 100
            },
            {
              tileid = 62,
              duration = 100
            }
          }
        },
        {
          id = 63,
          animation = {
            {
              tileid = 63,
              duration = 100
            },
            {
              tileid = 64,
              duration = 100
            },
            {
              tileid = 65,
              duration = 100
            }
          }
        },
        {
          id = 66,
          animation = {
            {
              tileid = 66,
              duration = 100
            },
            {
              tileid = 67,
              duration = 100
            },
            {
              tileid = 68,
              duration = 100
            }
          }
        },
        {
          id = 69,
          animation = {
            {
              tileid = 69,
              duration = 100
            },
            {
              tileid = 70,
              duration = 100
            },
            {
              tileid = 71,
              duration = 100
            }
          }
        },
        {
          id = 72,
          animation = {
            {
              tileid = 72,
              duration = 100
            },
            {
              tileid = 73,
              duration = 100
            },
            {
              tileid = 74,
              duration = 100
            }
          }
        },
        {
          id = 75,
          animation = {
            {
              tileid = 75,
              duration = 100
            },
            {
              tileid = 76,
              duration = 100
            },
            {
              tileid = 77,
              duration = 100
            }
          }
        },
        {
          id = 78,
          animation = {
            {
              tileid = 78,
              duration = 100
            },
            {
              tileid = 79,
              duration = 100
            },
            {
              tileid = 80,
              duration = 100
            }
          }
        },
        {
          id = 81,
          animation = {
            {
              tileid = 81,
              duration = 100
            },
            {
              tileid = 82,
              duration = 100
            },
            {
              tileid = 83,
              duration = 100
            }
          }
        },
        {
          id = 84,
          animation = {
            {
              tileid = 84,
              duration = 100
            },
            {
              tileid = 85,
              duration = 100
            },
            {
              tileid = 86,
              duration = 100
            }
          }
        },
        {
          id = 87,
          animation = {
            {
              tileid = 87,
              duration = 100
            },
            {
              tileid = 88,
              duration = 100
            },
            {
              tileid = 89,
              duration = 100
            }
          }
        },
        {
          id = 90,
          animation = {
            {
              tileid = 90,
              duration = 100
            },
            {
              tileid = 91,
              duration = 100
            },
            {
              tileid = 92,
              duration = 100
            }
          }
        },
        {
          id = 93,
          animation = {
            {
              tileid = 93,
              duration = 100
            },
            {
              tileid = 94,
              duration = 100
            },
            {
              tileid = 95,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "wineitems",
      firstgid = 811,
      tilewidth = 8,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "tilesets/wineitems.png",
      imagewidth = 32,
      imageheight = 48,
      objectalignment = "topleft",
      tileoffset = {
        x = -4,
        y = -2
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 24
      },
      properties = {
        ["commoncollision"] = 0
      },
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
                id = 2,
                name = "hull",
                type = "Fixture",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 2,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 3,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 4,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 5,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 6,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 7,
          objectGroup = {
            type = "objectgroup",
            draworder = "topdown",
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
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
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
      name = "explosion_giant",
      firstgid = 819,
      tilewidth = 256,
      tileheight = 256,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "tilesets/explosion_giant.png",
      imagewidth = 1024,
      imageheight = 1024,
      objectalignment = "topleft",
      tileoffset = {
        x = -128,
        y = -128
      },
      grid = {
        orientation = "orthogonal",
        width = 256,
        height = 256
      },
      properties = {},
      wangsets = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          type = "Spark",
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
            },
            {
              tileid = 10,
              duration = 67
            },
            {
              tileid = 11,
              duration = 67
            },
            {
              tileid = 12,
              duration = 67
            },
            {
              tileid = 13,
              duration = 67
            },
            {
              tileid = 14,
              duration = 67
            },
            {
              tileid = 15,
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
      width = 18,
      height = 100,
      id = 45,
      name = "Copy of town04_f_low",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = -1
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0LENgFAMQ8Fsl6FYHgom+BLYxRUpXhHJup2Zfe56bw/79O+rbtnBhw8fPulu2cGHDx8+6W7ZwYcPHz7pbtnBhw8fPulu2cGHDx8+6W7Zwedfnxv8OKon"
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 40,
      name = "prefabs",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 266,
          name = "DefeatedPawn",
          type = "Unit",
          shape = "rectangle",
          x = 304,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 700,
          visible = true,
          properties = {
            ["module"] = "Unit",
            ["start"] = "startDefeatedDrunkEnemy",
            ["think"] = "thinkDefeatedDrunkEnemy"
          }
        },
        {
          id = 294,
          name = "DefeatedKnight",
          type = "Unit",
          shape = "rectangle",
          x = 328,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 697,
          visible = true,
          properties = {
            ["module"] = "Unit",
            ["start"] = "startDefeatedDrunkEnemy",
            ["think"] = "thinkDefeatedDrunkEnemy"
          }
        },
        {
          id = 295,
          name = "DefeatedRook",
          type = "Unit",
          shape = "rectangle",
          x = 352,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 703,
          visible = true,
          properties = {
            ["module"] = "Unit",
            ["start"] = "startDefeatedDrunkEnemy",
            ["think"] = "thinkDefeatedDrunkEnemy"
          }
        },
        {
          id = 296,
          name = "DefeatedBishop",
          type = "Unit",
          shape = "rectangle",
          x = 376,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 706,
          visible = true,
          properties = {
            ["module"] = "Unit",
            ["start"] = "startDefeatedDrunkEnemy",
            ["think"] = "thinkDefeatedDrunkEnemy"
          }
        },
        {
          id = 297,
          name = "DefeatedKing",
          type = "Unit",
          shape = "rectangle",
          x = 400,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 709,
          visible = true,
          properties = {
            ["module"] = "Unit",
            ["start"] = "startDefeatedDrunkEnemy",
            ["think"] = "thinkDefeatedDrunkEnemy"
          }
        },
        {
          id = 298,
          name = "DefeatedQueen",
          type = "Unit",
          shape = "rectangle",
          x = 424,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 712,
          visible = true,
          properties = {
            ["module"] = "Unit",
            ["start"] = "startDefeatedDrunkEnemy",
            ["think"] = "thinkDefeatedDrunkEnemy"
          }
        },
        {
          id = 286,
          name = "WineGlassRed",
          type = "Unit",
          shape = "rectangle",
          x = 304,
          y = 1280,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 811,
          visible = true,
          properties = {
            ["alcohol"] = 1,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 287,
          name = "WineGlassMedium",
          type = "Unit",
          shape = "rectangle",
          x = 320,
          y = 1280,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 812,
          visible = true,
          properties = {
            ["alcohol"] = 1,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 288,
          name = "WineGlassWhite",
          type = "Unit",
          shape = "rectangle",
          x = 336,
          y = 1280,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 813,
          visible = true,
          properties = {
            ["alcohol"] = 1,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 289,
          name = "WineGlassDark",
          type = "Unit",
          shape = "rectangle",
          x = 352,
          y = 1280,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 814,
          visible = true,
          properties = {
            ["alcohol"] = 1,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 290,
          name = "WineBottleRed",
          type = "Unit",
          shape = "rectangle",
          x = 304,
          y = 1312,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 815,
          visible = true,
          properties = {
            ["alcohol"] = 14,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 291,
          name = "WineBottleMedium",
          type = "Unit",
          shape = "rectangle",
          x = 320,
          y = 1312,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 816,
          visible = true,
          properties = {
            ["alcohol"] = 12,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 292,
          name = "WineBottleWhite",
          type = "Unit",
          shape = "rectangle",
          x = 336,
          y = 1312,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 817,
          visible = true,
          properties = {
            ["alcohol"] = 10,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        },
        {
          id = 293,
          name = "WineBottleDark",
          type = "Unit",
          shape = "rectangle",
          x = 352,
          y = 1312,
          width = 8,
          height = 24,
          rotation = 0,
          gid = 818,
          visible = true,
          properties = {
            ["alcohol"] = 16,
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["team"] = "item"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 32,
      name = "reception",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["script"] = "PathGraph",
        ["z"] = 0
      },
      objects = {
        {
          id = 25,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 128,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 787,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 274 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 26,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 160,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 790,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 275 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 29,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 80,
          y = 1360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 769,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 269 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 30,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 88,
          y = 1384,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 772,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 269 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 31,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 176,
          y = 1288,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 727,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 271 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 32,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 184,
          y = 1448,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 727,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 273 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 33,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 176,
          y = 1360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 730,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 272 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 34,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 104,
          y = 1288,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 775,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 268 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 35,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 192,
          y = 1376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 736,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 272 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 36,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 200,
          y = 1432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 733,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 273 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 37,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 104,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 778,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 269 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 38,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 216,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 724,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 272 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 39,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 80,
          y = 1280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 784,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 268 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 40,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 96,
          y = 1432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 778,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 270 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 41,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 88,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 772,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 270 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 42,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 184,
          y = 1304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 730,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 271 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 43,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 176,
          y = 1432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 724,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 273 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 44,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 112,
          y = 1440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 784,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 270 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 45,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 200,
          y = 1280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 736,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 271 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 46,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 72,
          y = 1440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 775,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 270 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 47,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 200,
          y = 1352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 721,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 272 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 48,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 88,
          y = 1304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 781,
          visible = true,
          properties = {
            ["bodytype"] = "dynamic",
            ["module"] = "Unit",
            ["movespeed"] = 4,
            ["path"] = { id = 268 },
            ["start"] = "startFleeingCivilian",
            ["think"] = "thinkFleeingCivilian"
          }
        },
        {
          id = 267,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -16,
          y = 1280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 268,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 16,
          y = 1296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 269,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 16,
          y = 1376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 270,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 16,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 271,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 336,
          y = 1296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 272,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 336,
          y = 1376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 273,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 336,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 274,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 128,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -272 }
          },
          properties = {}
        },
        {
          id = 275,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 160,
          y = 1456,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 48,
      name = "pawn1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 340,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 240,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 342,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -16,
          y = 1200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 343,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 240,
          y = 1192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 39,
      name = "pawn2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 262,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 208,
          y = 1176,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 263,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -24,
          y = 1184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 319,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 208,
          y = 1176,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 46,
      name = "pawn3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 330,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 176,
          y = 1160,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 332,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -32,
          y = 1168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 333,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 176,
          y = 1160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 47,
      name = "pawn4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 335,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 144,
          y = 1144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 337,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 1152,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 338,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 144,
          y = 1144,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 50,
      name = "pawn5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 350,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 112,
          y = 1128,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 351,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -48,
          y = 1136,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 352,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 112,
          y = 1128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 51,
      name = "pawn6",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 353,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 80,
          y = 1112,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 354,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -56,
          y = 1120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 355,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 80,
          y = 1112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 52,
      name = "pawn7",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 356,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 1096,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 357,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 1104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 358,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 48,
          y = 1096,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = 272 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 53,
      name = "pawndiagonal1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 359,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 296,
          y = 1080,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 360,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 1088,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 361,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 296,
          y = 1080,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 16 },
            { x = -320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 54,
      name = "pawndiagonal2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 362,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 296,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 363,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 1064,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 364,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 296,
          y = 1056,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 16 },
            { x = -320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 55,
      name = "pawndiagonal3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 365,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 296,
          y = 1032,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 366,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 1040,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 367,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 296,
          y = 1032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 16 },
            { x = -320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 59,
      name = "pawndiagonal4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 377,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 296,
          y = 1008,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 378,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 1016,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 379,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 296,
          y = 1008,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 16 },
            { x = -320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 56,
      name = "pawndiagonalright1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 368,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -8,
          y = 1040,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 369,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 1048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 370,
          name = "",
          type = "Path",
          shape = "polyline",
          x = -8,
          y = 1040,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 16 },
            { x = 320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 57,
      name = "pawndiagonalright2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 371,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -8,
          y = 1016,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 372,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 1024,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 373,
          name = "",
          type = "Path",
          shape = "polyline",
          x = -8,
          y = 1016,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 16 },
            { x = 320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 58,
      name = "pawndiagonalright3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 374,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -8,
          y = 992,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 375,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 1000,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 376,
          name = "",
          type = "Path",
          shape = "polyline",
          x = -8,
          y = 992,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 16 },
            { x = 320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 60,
      name = "pawndiagonalright4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 380,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -8,
          y = 968,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 381,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 976,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 382,
          name = "",
          type = "Path",
          shape = "polyline",
          x = -8,
          y = 968,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 16 },
            { x = 320, y = 256 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 65,
      name = "pawnscissors1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 415,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 414,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 272,
          y = 928,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 435,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 304,
          y = 960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 418,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 16,
          y = 912,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 429,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -16,
          y = 944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 419,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 240,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 420,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 880,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 424,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 208,
          y = 864,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 425,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 80,
          y = 848,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 646,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedPawn",
            ["enemyteam"] = "playershot",
            ["health"] = 15,
            ["module"] = "Enemies",
            ["start"] = "startPawn",
            ["team"] = "enemy",
            ["think"] = "thinkPawn"
          }
        },
        {
          id = 431,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 80,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 48 },
            { x = 8, y = 80 },
            { x = 24, y = 104 },
            { x = 48, y = 120 },
            { x = 80, y = 128 },
            { x = 96, y = 128 },
            { x = 320, y = 128 }
          },
          properties = {}
        },
        {
          id = 432,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 48,
          y = 832,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 48 },
            { x = 8, y = 80 },
            { x = 24, y = 104 },
            { x = 48, y = 120 },
            { x = 80, y = 128 },
            { x = 96, y = 128 },
            { x = 320, y = 128 }
          },
          properties = {}
        },
        {
          id = 433,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 16,
          y = 864,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 48 },
            { x = 8, y = 80 },
            { x = 24, y = 104 },
            { x = 48, y = 120 },
            { x = 80, y = 128 },
            { x = 96, y = 128 },
            { x = 320, y = 128 }
          },
          properties = {}
        },
        {
          id = 434,
          name = "",
          type = "Path",
          shape = "polyline",
          x = -16,
          y = 896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 48 },
            { x = 8, y = 80 },
            { x = 24, y = 104 },
            { x = 48, y = 120 },
            { x = 80, y = 128 },
            { x = 96, y = 128 },
            { x = 320, y = 128 }
          },
          properties = {}
        },
        {
          id = 436,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 208,
          y = 848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = -8, y = 48 },
            { x = -24, y = 72 },
            { x = -48, y = 88 },
            { x = -80, y = 96 },
            { x = -320, y = 96 }
          },
          properties = {}
        },
        {
          id = 437,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 240,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = -8, y = 48 },
            { x = -24, y = 72 },
            { x = -48, y = 88 },
            { x = -80, y = 96 },
            { x = -320, y = 96 }
          },
          properties = {}
        },
        {
          id = 438,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 272,
          y = 912,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = -8, y = 48 },
            { x = -24, y = 72 },
            { x = -48, y = 88 },
            { x = -80, y = 96 },
            { x = -320, y = 96 }
          },
          properties = {}
        },
        {
          id = 439,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 304,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = -8, y = 48 },
            { x = -24, y = 72 },
            { x = -48, y = 88 },
            { x = -80, y = 96 },
            { x = -320, y = 96 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 61,
      name = "knight1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 396,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 272,
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 443,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 336,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["path"] = { id = 409 },
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 384,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 409,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 80,
          y = 704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 192, y = 64 },
            { x = 160, y = 128 },
            { x = -32, y = 96 },
            { x = -96, y = 64 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 62,
      name = "knight2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 387,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 394,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 16,
          y = 720,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 444,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -48,
          y = 688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["path"] = { id = 393 },
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 393,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 208,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -192, y = 96 },
            { x = -160, y = 160 },
            { x = 0, y = 128 },
            { x = 96, y = 96 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 63,
      name = "knight3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 397,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -40,
          y = 656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 398,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 16,
          y = 640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 445,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = -48,
          y = 608,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["path"] = { id = 406 },
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 406,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 48,
          y = 640,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = 0 },
            { x = 32, y = 32 },
            { x = 192, y = 64 },
            { x = 256, y = 96 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 64,
      name = "knight4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      objects = {
        {
          id = 400,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = -64,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 }
          },
          properties = {
            ["command"] = "addUnits",
            ["commandparam"] = "layer"
          }
        },
        {
          id = 404,
          name = "",
          type = "Unit",
          shape = "rectangle",
          x = 48,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 643,
          visible = true,
          properties = {
            ["bodytileshape"] = "hull",
            ["bodytype"] = "dynamic",
            ["defeatdrop"] = "DefeatedKnight",
            ["enemyteam"] = "playershot",
            ["health"] = 30,
            ["module"] = "Enemies",
            ["movespeed"] = 2,
            ["team"] = "enemy",
            ["think"] = "thinkKnight"
          }
        },
        {
          id = 407,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 48,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 32, y = 64 },
            { x = 96, y = 32 },
            { x = 128, y = 96 },
            { x = 192, y = 128 },
            { x = 224, y = 192 },
            { x = 288, y = 224 }
          },
          properties = {}
        }
      }
    },
    {
      type = "group",
      id = 38,
      name = "oldobjects",
      visible = false,
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
          id = 41,
          name = "items",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 299,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 72,
              y = 1232,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 311,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 184,
              y = 1392,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 304,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 232,
              y = 1320,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 308,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 200,
              y = 1240,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 300,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 88,
              y = 1240,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 317,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 72,
              y = 1312,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 310,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 200,
              y = 1400,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 312,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 216,
              y = 1232,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 314,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 88,
              y = 1400,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 303,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 216,
              y = 1312,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 307,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 72,
              y = 1392,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 301,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 104,
              y = 1232,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 313,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 40,
              y = 1312,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 309,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 216,
              y = 1392,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 302,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 248,
              y = 1312,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 306,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 104,
              y = 1392,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 315,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 56,
              y = 1320,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 316,
              name = "",
              type = "Unit",
              shape = "rectangle",
              x = 184,
              y = 1232,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {
                ["alcohol"] = 1,
                ["bodytileshape"] = "hull",
                ["bodytype"] = "dynamic",
                ["team"] = "item"
              }
            },
            {
              id = 305,
              name = "",
              type = "Trigger",
              shape = "polyline",
              x = -40,
              y = 1280,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 16, y = 0 }
              },
              properties = {
                ["command"] = "addUnits",
                ["commandparam"] = "layer"
              }
            }
          }
        },
        {
          type = "tilelayer",
          x = 0,
          y = 0,
          width = 18,
          height = 100,
          id = 1,
          name = "town04_f_low",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "base64",
          compression = "zlib",
          data = "eJztmF1OFEEQx3s3igfY7MeMsHgBWGZnJcYb6KN6DDW++2D8Qi/ggyYm6hF8MUFPgYAHIIIaPw8gWi1V8T9Fdc8Hm4CRhx/pqa7+T1d1T3exa865t8SNlnNr3G4TF+jPTVfE23zfmjHmM/GFmFXtizTgkSvibdpP2jOkeYpYVu2nxEuFt2k/aX8l2vSejiu2XxHviW1mh23aD9tCQizA8wdii/kI9hGxxO0eP29H+AU6rhX33Tpi/JwSGedpwrkbc779c5dt4uPXYJHxtj74pzxmkX1HPH7AGl0en7FPh8f24D1jV1x3zZjfkbJWUuJ/TJiE9ntKnG4dzDZL9Ik56G9iO9b5P3WGREaMof8gtqMG3nnITkmf1vF33jPiOfDC7d1/sT5LZ5V4DbwBnVCfpbNObACboBPqaxKXf96CdtO43rDOqmseVx2dWFzrrFtFJxYX1gSi2SSu0FzrxlVn/xylffjJ2fXRbkmfjJf6ydc2vubxdY3UTSk/S10ltZTUqxMmd3v36jTw5+sl0rtMXHHF9jKfmyHO8njhKo25Rlx3xbY/v28Tdwzuwh0hrNCYB8RDV2x7nXvELYP7hk6Iujqh/NTVieVnhXhs8KRGfiYla51XzE8oXmxX0QnFi+0qOqF4sS2+sf1ah8OuB5rUD1Y9UBd/FlrnXgyp8wVf74uO1RfS0ft8DnSsvn9FR+pPYQw6Vh+OLftft8p6+TtlocTH3127JT4ZzycnThAzqj8Few72JWWX3wX8XTYkzvAzxiz2Adj7YE84LrlHzxHn3d/fDGQ+YkedDth7PKd+SexVkNxk/L4xx47fZhfmLvaBWp+M5455zmGNdP4tu9QNA5VnXJcU7Bh/AvYRxyGxSd5S8O+CHePog73Dfb0p5DmvoJOUnDXyXejfhnz+TkJuZ+Hb1n2C3lsdzt8851Dr6D5h0dDZoDGbxLvWfh3dJ2ubGzrfyOc78cPQ0X0SjxWXBnVC4J4I5dDSQd+Bmk8oh5ZOyNfKYUwHfRO1d3QOYzro68+HJWNeTfI8MmxN9vPE0Gmyn60z9bD3c9lvwUPjDtaU3RWSVyu3Os+xtZe8hvaukATWHnOK6L0uZK54D1v5RvReFwYRnT/fTatYD1rnXpVcYw0W+zb8+dOdgo4ndu9U1fEaw/Z+5tthnTnD3/Mb0J3zKg=="
        },
        {
          type = "tilelayer",
          x = 0,
          y = 0,
          width = 18,
          height = 100,
          id = 2,
          name = "town04_f_mid",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "base64",
          compression = "zlib",
          data = "eJztlUtuwjAURZ1MoasovynjFvHZBWwCic8m2u6iLZ8dwCzAIoCFwAyJa6CSmzqR7ViJVN0jXenJN35xnvNsIQghpHieQyGqodsY8zCPrzzjQIhp4DZGzLkE972oPPajGZp5OtRnbTyuh+uRyF6eJPRzmkfyJUqIbfiEvjSxyhx7vYCWGfd8g/lbaJeSx2Q9t1wG74sS4iI4QWdN7JMIKqG2T8HfuIj1kN/soQN0tPR8MoTeHOa9Q6OEPDXcJ3WooblX4p7M86H4ao+38a92oK7mfIh739DM4TtskP1TfvSQjSfpZTgrs8xNYwD1PYyvoZWH8f8K65wvL9Ar1LL0iBk2NWS9s8P/OV9+aqqK9SVxruRaWiA="
        },
        {
          type = "tilelayer",
          x = 0,
          y = 0,
          width = 18,
          height = 100,
          id = 4,
          name = "town04_f_high",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          encoding = "base64",
          compression = "zlib",
          data = "eJztlT1Ow0AQhWdSRpA2OQJ1xFVA/ByCn3sABQi4QSp+Qh9SBgQ3gC4nAAQ1b0VWjKz1ej1rQRLNJ43ivOeRn3c9NpFhGIaebSbaZZ0muYJ3zTpNMoH3wDpNcg5vvaXTJJfwL1inSe7gDVmnSZ7hPbFOk/Rwz2es0yR9+Des0ySn8B5ZpxnpTPlnlndm89xtpXkhbhP2oeocd80Bftuz/8U8rt95A6rO43DPWdk1ewn900JvMY8nNY/PXsTfc8r6uHN89tD69ANejJR9i+WJ7RdRvf2qypOT1ZgfNlH7gWPJEfb6GHXyB3uekmcReUG9Bo6b5g31ETj+rzzGLyPUPWpc02uSDdLN1AFqq8RbwfdkFdUJfFdinmNPkcVzmNFbRke849z8vFN4hkKe7F3LeFfm9MYom/O6+ifqqwF9WbF1XlzaSs9Io84a2nrnY8+zYcwX34f5bdU="
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 6,
          name = "camera",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 2,
              name = "camera",
              type = "Camera",
              shape = "rectangle",
              x = 24,
              y = 1280,
              width = 240,
              height = 320,
              rotation = 0,
              visible = true,
              properties = {
                ["pathid"] = "mylayer",
                ["pathspeed"] = 30
              }
            },
            {
              id = 3,
              name = "path",
              type = "",
              shape = "polyline",
              x = 24,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 16 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 7,
          name = "fleepaths",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 49,
              name = "",
              type = "",
              shape = "polyline",
              x = 16,
              y = 1296,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 64, y = 0 },
                { x = -32, y = 0 }
              },
              properties = {}
            },
            {
              id = 50,
              name = "",
              type = "",
              shape = "polyline",
              x = 16,
              y = 1376,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 64, y = 0 },
                { x = -32, y = 0 }
              },
              properties = {}
            },
            {
              id = 51,
              name = "",
              type = "",
              shape = "polyline",
              x = 16,
              y = 1456,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 64, y = 0 },
                { x = -32, y = 0 }
              },
              properties = {}
            },
            {
              id = 52,
              name = "",
              type = "",
              shape = "polyline",
              x = 304,
              y = 1296,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -96, y = 0 }
              },
              properties = {}
            },
            {
              id = 53,
              name = "",
              type = "",
              shape = "polyline",
              x = 304,
              y = 1376,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -96, y = 0 }
              },
              properties = {}
            },
            {
              id = 54,
              name = "",
              type = "",
              shape = "polyline",
              x = 304,
              y = 1456,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -96, y = 0 }
              },
              properties = {}
            },
            {
              id = 28,
              name = "path",
              type = "",
              shape = "polyline",
              x = 144,
              y = 1456,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = -240 }
              },
              properties = {}
            },
            {
              id = 95,
              name = "",
              type = "",
              shape = "polyline",
              x = 104,
              y = 1008,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -40, y = 0 },
                { x = -64, y = 24 },
                { x = -112, y = 24 }
              },
              properties = {}
            },
            {
              id = 97,
              name = "",
              type = "",
              shape = "polyline",
              x = 184,
              y = 1008,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 40, y = 0 },
                { x = 64, y = 24 },
                { x = 112, y = 24 }
              },
              properties = {}
            },
            {
              id = 99,
              name = "",
              type = "",
              shape = "polyline",
              x = 48,
              y = 976,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 8, y = 16 },
                { x = 8, y = 32 },
                { x = -8, y = 48 },
                { x = -64, y = 48 }
              },
              properties = {}
            },
            {
              id = 100,
              name = "",
              type = "",
              shape = "polyline",
              x = 232,
              y = 976,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 16 },
                { x = 0, y = 32 },
                { x = 16, y = 48 },
                { x = 72, y = 48 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 8,
          name = "paths",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {}
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 9,
          name = "boss",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 249,
              name = "",
              type = "Trigger",
              shape = "polyline",
              x = 0,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 288, y = 0 }
              },
              properties = {
                ["activateobjectslayer"] = "groundobjects",
                ["cleartowin"] = true
              }
            },
            {
              id = 250,
              name = "",
              type = "WineHighPriestFanAttack1",
              shape = "rectangle",
              x = 144,
              y = -24,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 655,
              visible = true,
              properties = {}
            },
            {
              id = 251,
              name = "",
              type = "",
              shape = "polyline",
              x = 144,
              y = 56,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 32, y = 32 },
                { x = 64, y = 32 },
                { x = 96, y = 64 },
                { x = 64, y = 64 },
                { x = 48, y = 80 },
                { x = 16, y = 80 },
                { x = 0, y = 64 },
                { x = -16, y = 80 },
                { x = -48, y = 80 },
                { x = -64, y = 64 },
                { x = -96, y = 64 },
                { x = -64, y = 32 },
                { x = -32, y = 32 },
                { x = 0, y = 0 }
              },
              properties = {}
            },
            {
              id = 252,
              name = "",
              type = "",
              shape = "rectangle",
              x = 128,
              y = -16,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 658,
              visible = true,
              properties = {
                ["rideid"] = 250
              }
            },
            {
              id = 253,
              name = "",
              type = "",
              shape = "rectangle",
              x = 160,
              y = -16,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 658,
              visible = true,
              properties = {
                ["rideid"] = 250
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 10,
          name = "preboss",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 126,
              name = "",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 72,
              width = 16,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["soundfile"] = "snd/alarm4.ogg"
              }
            },
            {
              id = 210,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 481,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 211,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 482,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 212,
              name = "",
              type = "",
              shape = "rectangle",
              x = 16,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 534,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 213,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 507,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 214,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 508,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 215,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 533,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 216,
              name = "",
              type = "",
              shape = "rectangle",
              x = 16,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 560,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 217,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 559,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 218,
              name = "",
              type = "",
              shape = "rectangle",
              x = 208,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 481,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 219,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 482,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 220,
              name = "",
              type = "",
              shape = "rectangle",
              x = 208,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 507,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 221,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 508,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 222,
              name = "",
              type = "",
              shape = "rectangle",
              x = 272,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 534,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 223,
              name = "",
              type = "",
              shape = "rectangle",
              x = 256,
              y = 40,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 533,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 224,
              name = "",
              type = "",
              shape = "rectangle",
              x = 272,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 560,
              visible = true,
              properties = {
                ["static"] = true
              }
            },
            {
              id = 225,
              name = "",
              type = "",
              shape = "rectangle",
              x = 256,
              y = 56,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 559,
              visible = true,
              properties = {
                ["static"] = true
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 11,
          name = "prebosspowerup",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 163,
              name = "",
              type = "",
              shape = "rectangle",
              x = 144,
              y = 256,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 818,
              visible = true,
              properties = {}
            },
            {
              id = 162,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 256,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 815,
              visible = true,
              properties = {}
            },
            {
              id = 226,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 256,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 815,
              visible = true,
              properties = {}
            },
            {
              id = 227,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 232,
              width = 16,
              height = 24,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 12,
          name = "guard12",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 228,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 104,
              y = 344,
              width = 80,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 241,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 336,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 242,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 312,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 243,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 288,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 652,
              visible = true,
              properties = {}
            },
            {
              id = 244,
              name = "",
              type = "",
              shape = "rectangle",
              x = 248,
              y = 336,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 245,
              name = "",
              type = "",
              shape = "rectangle",
              x = 248,
              y = 312,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 246,
              name = "",
              type = "",
              shape = "rectangle",
              x = 248,
              y = 288,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 652,
              visible = true,
              properties = {}
            },
            {
              id = 247,
              name = "",
              type = "",
              shape = "polyline",
              x = 40,
              y = 312,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 104 },
                { x = 16, y = 120 },
                { x = 32, y = 120 },
                { x = 48, y = 104 },
                { x = 48, y = -72 },
                { x = -64, y = -184 }
              },
              properties = {}
            },
            {
              id = 248,
              name = "",
              type = "",
              shape = "polyline",
              x = 248,
              y = 336,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 80 },
                { x = -16, y = 96 },
                { x = -32, y = 96 },
                { x = -48, y = 80 },
                { x = -48, y = -96 },
                { x = 64, y = -208 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 13,
          name = "guard11",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 209,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 104,
              y = 376,
              width = 80,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 229,
              name = "",
              type = "",
              shape = "rectangle",
              x = 120,
              y = 368,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 230,
              name = "",
              type = "",
              shape = "rectangle",
              x = 168,
              y = 368,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 231,
              name = "",
              type = "",
              shape = "polyline",
              x = 120,
              y = 368,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 40 },
                { x = -48, y = 88 },
                { x = -64, y = 88 },
                { x = -88, y = 112 },
                { x = -88, y = 352 }
              },
              properties = {}
            },
            {
              id = 232,
              name = "",
              type = "",
              shape = "polyline",
              x = 168,
              y = 368,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 40 },
                { x = 48, y = 88 },
                { x = 64, y = 88 },
                { x = 88, y = 112 },
                { x = 88, y = 352 }
              },
              properties = {}
            },
            {
              id = 233,
              name = "",
              type = "",
              shape = "rectangle",
              x = 120,
              y = 320,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 234,
              name = "",
              type = "",
              shape = "rectangle",
              x = 120,
              y = 344,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 235,
              name = "",
              type = "",
              shape = "rectangle",
              x = 168,
              y = 344,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 236,
              name = "",
              type = "",
              shape = "rectangle",
              x = 168,
              y = 320,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 237,
              name = "",
              type = "",
              shape = "rectangle",
              x = 120,
              y = 296,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 238,
              name = "",
              type = "",
              shape = "rectangle",
              x = 168,
              y = 296,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 239,
              name = "",
              type = "",
              shape = "rectangle",
              x = 120,
              y = 272,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 240,
              name = "",
              type = "",
              shape = "rectangle",
              x = 168,
              y = 272,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 14,
          name = "highobj7",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 159,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 488,
              width = 16,
              height = 104,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            },
            {
              id = 160,
              name = "",
              type = "",
              shape = "rectangle",
              x = 72,
              y = 544,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 161,
              name = "",
              type = "",
              shape = "rectangle",
              x = 184,
              y = 576,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 164,
              name = "",
              type = "",
              shape = "rectangle",
              x = 216,
              y = 584,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 165,
              name = "",
              type = "",
              shape = "rectangle",
              x = 104,
              y = 504,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 166,
              name = "",
              type = "",
              shape = "rectangle",
              x = 184,
              y = 520,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {}
            },
            {
              id = 167,
              name = "",
              type = "",
              shape = "rectangle",
              x = 104,
              y = 592,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 15,
          name = "guard10",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 193,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 104,
              y = 528,
              width = 80,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 194,
              name = "",
              type = "",
              shape = "polyline",
              x = 32,
              y = 480,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 8, y = 40 },
                { x = 8, y = 152 },
                { x = 32, y = 176 },
                { x = 80, y = 176 },
                { x = 104, y = 152 },
                { x = 104, y = -8 },
                { x = 88, y = -24 },
                { x = -48, y = -24 }
              },
              properties = {}
            },
            {
              id = 195,
              name = "",
              type = "",
              shape = "polyline",
              x = 256,
              y = 480,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = -8, y = 40 },
                { x = -8, y = 152 },
                { x = -32, y = 176 },
                { x = -80, y = 176 },
                { x = -104, y = 152 },
                { x = -104, y = -8 },
                { x = -88, y = -24 },
                { x = 48, y = -24 }
              },
              properties = {}
            },
            {
              id = 197,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 520,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 652,
              visible = true,
              properties = {}
            },
            {
              id = 198,
              name = "",
              type = "",
              shape = "rectangle",
              x = 248,
              y = 520,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 652,
              visible = true,
              properties = {}
            },
            {
              id = 199,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 496,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 652,
              visible = true,
              properties = {}
            },
            {
              id = 200,
              name = "",
              type = "",
              shape = "rectangle",
              x = 248,
              y = 496,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 652,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 16,
          name = "guard9",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 196,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 128,
              y = 576,
              width = 32,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 201,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 544,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 202,
              name = "",
              type = "",
              shape = "rectangle",
              x = 152,
              y = 544,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 203,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 520,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 204,
              name = "",
              type = "",
              shape = "rectangle",
              x = 152,
              y = 520,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 205,
              name = "",
              type = "",
              shape = "polyline",
              x = 136,
              y = 568,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 80 },
                { x = -24, y = 104 },
                { x = -80, y = 104 },
                { x = -112, y = 72 },
                { x = -112, y = -112 },
                { x = -160, y = -160 }
              },
              properties = {}
            },
            {
              id = 206,
              name = "",
              type = "",
              shape = "polyline",
              x = 152,
              y = 568,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 80 },
                { x = 24, y = 104 },
                { x = 80, y = 104 },
                { x = 112, y = 72 },
                { x = 112, y = -112 },
                { x = 160, y = -160 }
              },
              properties = {}
            },
            {
              id = 207,
              name = "",
              type = "",
              shape = "polyline",
              x = 136,
              y = 568,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = -24 },
                { x = 0, y = -48 }
              },
              properties = {}
            },
            {
              id = 208,
              name = "",
              type = "",
              shape = "polyline",
              x = 152,
              y = 568,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = -24 },
                { x = 0, y = -48 }
              },
              properties = {}
            },
            {
              id = 179,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 568,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 180,
              name = "",
              type = "",
              shape = "rectangle",
              x = 152,
              y = 568,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 17,
          name = "guard8",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 170,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 128,
              y = 680,
              width = 32,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 171,
              name = "",
              type = "",
              shape = "rectangle",
              x = 328,
              y = 712,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 172,
              name = "",
              type = "",
              shape = "rectangle",
              x = 360,
              y = 712,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 173,
              name = "",
              type = "",
              shape = "rectangle",
              x = 392,
              y = 712,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 174,
              name = "",
              type = "",
              shape = "rectangle",
              x = 328,
              y = 752,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 175,
              name = "",
              type = "",
              shape = "rectangle",
              x = 360,
              y = 752,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 176,
              name = "",
              type = "",
              shape = "rectangle",
              x = 392,
              y = 752,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 177,
              name = "",
              type = "",
              shape = "rectangle",
              x = 296,
              y = 712,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 178,
              name = "",
              type = "",
              shape = "rectangle",
              x = 296,
              y = 752,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 181,
              name = "",
              type = "",
              shape = "polyline",
              x = 296,
              y = 712,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -184, y = 0 },
                { x = -200, y = -16 },
                { x = -216, y = -16 },
                { x = -240, y = 8 },
                { x = -240, y = 144 },
                { x = -200, y = 184 },
                { x = -160, y = 224 }
              },
              properties = {}
            },
            {
              id = 182,
              name = "",
              type = "",
              shape = "polyline",
              x = 296,
              y = 752,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -48, y = 48 },
                { x = -168, y = 48 },
                { x = -192, y = 24 },
                { x = -192, y = -40 },
                { x = -208, y = -56 },
                { x = -224, y = -56 },
                { x = -240, y = -40 },
                { x = -240, y = 288 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 18,
          name = "highobj6",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 134,
              name = "",
              type = "",
              shape = "rectangle",
              x = 88,
              y = 720,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 818,
              visible = true,
              properties = {}
            },
            {
              id = 146,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 696,
              width = 8,
              height = 24,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 19,
          name = "highobj5",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 145,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 768,
              width = 8,
              height = 24,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            },
            {
              id = 129,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 792,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 130,
              name = "",
              type = "",
              shape = "rectangle",
              x = 88,
              y = 792,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 20,
          name = "guard7",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 147,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 128,
              y = 792,
              width = 32,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 148,
              name = "",
              type = "",
              shape = "rectangle",
              x = 56,
              y = 784,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 149,
              name = "",
              type = "",
              shape = "rectangle",
              x = 56,
              y = 760,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 150,
              name = "",
              type = "",
              shape = "rectangle",
              x = 56,
              y = 736,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 151,
              name = "",
              type = "",
              shape = "rectangle",
              x = 296,
              y = 800,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 152,
              name = "",
              type = "",
              shape = "rectangle",
              x = 328,
              y = 800,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 153,
              name = "",
              type = "",
              shape = "rectangle",
              x = 104,
              y = 784,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 154,
              name = "",
              type = "",
              shape = "rectangle",
              x = 104,
              y = 760,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 155,
              name = "",
              type = "",
              shape = "rectangle",
              x = 104,
              y = 736,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 156,
              name = "",
              type = "",
              shape = "polyline",
              x = 56,
              y = 784,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 88 },
                { x = 24, y = 112 },
                { x = 56, y = 112 },
                { x = 80, y = 136 },
                { x = 80, y = 264 },
                { x = 64, y = 280 },
                { x = 64, y = 328 }
              },
              properties = {}
            },
            {
              id = 157,
              name = "",
              type = "",
              shape = "polyline",
              x = 104,
              y = 784,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 88 },
                { x = 24, y = 112 },
                { x = 48, y = 136 },
                { x = 48, y = 264 },
                { x = 64, y = 280 },
                { x = 64, y = 328 }
              },
              properties = {}
            },
            {
              id = 158,
              name = "",
              type = "",
              shape = "polyline",
              x = 296,
              y = 800,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -168, y = 0 },
                { x = -192, y = 24 },
                { x = -192, y = 56 },
                { x = -168, y = 80 },
                { x = 8, y = 80 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 21,
          name = "highobj4",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 127,
              name = "",
              type = "",
              shape = "rectangle",
              x = 184,
              y = 840,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {}
            },
            {
              id = 128,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 840,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 131,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 840,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 132,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 816,
              width = 8,
              height = 24,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 22,
          name = "guard6",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 133,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 864,
              width = 16,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 135,
              name = "",
              type = "",
              shape = "rectangle",
              x = -16,
              y = 912,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 136,
              name = "",
              type = "",
              shape = "rectangle",
              x = 304,
              y = 936,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 643,
              visible = true,
              properties = {}
            },
            {
              id = 143,
              name = "",
              type = "",
              shape = "polyline",
              x = -16,
              y = 912,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 56, y = 0 },
                { x = 88, y = -32 },
                { x = 144, y = -32 },
                { x = 176, y = 0 },
                { x = 176, y = 144 },
                { x = 224, y = 192 },
                { x = 224, y = 328 }
              },
              properties = {}
            },
            {
              id = 144,
              name = "",
              type = "",
              shape = "polyline",
              x = -16,
              y = 936,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 96, y = 304 },
                { x = 96, y = 168 },
                { x = 144, y = 120 },
                { x = 144, y = 0 },
                { x = 176, y = -32 },
                { x = 232, y = -32 },
                { x = 264, y = 0 },
                { x = 320, y = 0 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 23,
          name = "guard5",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 109,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 920,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 110,
              name = "",
              type = "",
              shape = "polyline",
              x = 40,
              y = 928,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = -8 },
                { x = 24, y = 16 },
                { x = 72, y = 16 },
                { x = 88, y = 32 },
                { x = 88, y = 112 },
                { x = 56, y = 144 },
                { x = 56, y = 280 }
              },
              properties = {}
            },
            {
              id = 111,
              name = "",
              type = "",
              shape = "rectangle",
              x = 16,
              y = 896,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 112,
              name = "",
              type = "",
              shape = "rectangle",
              x = 248,
              y = 920,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 113,
              name = "",
              type = "",
              shape = "rectangle",
              x = 272,
              y = 896,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 114,
              name = "",
              type = "",
              shape = "polyline",
              x = 16,
              y = 896,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 40, y = 40 },
                { x = 40, y = 104 },
                { x = 48, y = 112 },
                { x = 104, y = 112 },
                { x = 120, y = 128 },
                { x = 120, y = 160 },
                { x = 96, y = 184 },
                { x = 96, y = 328 }
              },
              properties = {}
            },
            {
              id = 115,
              name = "",
              type = "",
              shape = "polyline",
              x = 248,
              y = 920,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -24, y = 24 },
                { x = -72, y = 24 },
                { x = -88, y = 40 },
                { x = -88, y = 120 },
                { x = -56, y = 152 },
                { x = -56, y = 288 }
              },
              properties = {}
            },
            {
              id = 116,
              name = "",
              type = "",
              shape = "polyline",
              x = 272,
              y = 896,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -40, y = 40 },
                { x = -40, y = 104 },
                { x = -48, y = 112 },
                { x = -104, y = 112 },
                { x = -120, y = 128 },
                { x = -120, y = 160 },
                { x = -96, y = 184 },
                { x = -96, y = 328 }
              },
              properties = {}
            },
            {
              id = 117,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 936,
              width = 16,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 24,
          name = "guard4",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 76,
              name = "",
              type = "",
              shape = "rectangle",
              x = 96,
              y = 1056,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 77,
              name = "",
              type = "",
              shape = "rectangle",
              x = -8,
              y = 1088,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 78,
              name = "",
              type = "",
              shape = "rectangle",
              x = 192,
              y = 1056,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 79,
              name = "",
              type = "",
              shape = "rectangle",
              x = 296,
              y = 1088,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 86,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 128,
              y = 1064,
              width = 32,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 82,
              name = "",
              type = "",
              shape = "polyline",
              x = 96,
              y = 1056,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 48 },
                { x = 24, y = 72 },
                { x = 24, y = 344 }
              },
              properties = {}
            },
            {
              id = 83,
              name = "",
              type = "",
              shape = "polyline",
              x = 192,
              y = 1056,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 48 },
                { x = -24, y = 72 },
                { x = -24, y = 344 }
              },
              properties = {}
            },
            {
              id = 84,
              name = "",
              type = "",
              shape = "polyline",
              x = 0,
              y = 1088,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = -8, y = 0 },
                { x = 96, y = 64 },
                { x = 96, y = 328 }
              },
              properties = {}
            },
            {
              id = 85,
              name = "",
              type = "",
              shape = "polyline",
              x = 296,
              y = 1088,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -104, y = 64 },
                { x = -104, y = 352 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 25,
          name = "highobj3",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 87,
              name = "",
              type = "",
              shape = "rectangle",
              x = 80,
              y = 984,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 244,
              visible = true,
              properties = {}
            },
            {
              id = 88,
              name = "",
              type = "",
              shape = "rectangle",
              x = 80,
              y = 968,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 218,
              visible = true,
              properties = {}
            },
            {
              id = 89,
              name = "",
              type = "",
              shape = "rectangle",
              x = 192,
              y = 984,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 510,
              visible = true,
              properties = {}
            },
            {
              id = 90,
              name = "",
              type = "",
              shape = "rectangle",
              x = 192,
              y = 968,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 484,
              visible = true,
              properties = {}
            },
            {
              id = 101,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 112,
              y = 952,
              width = 64,
              height = 40,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            },
            {
              id = 118,
              name = "",
              type = "",
              shape = "rectangle",
              x = 80,
              y = 984,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 817,
              visible = true,
              properties = {}
            },
            {
              id = 119,
              name = "",
              type = "",
              shape = "rectangle",
              x = 96,
              y = 992,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 120,
              name = "",
              type = "",
              shape = "rectangle",
              x = 184,
              y = 992,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 121,
              name = "",
              type = "",
              shape = "rectangle",
              x = 216,
              y = 976,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 814,
              visible = true,
              properties = {}
            },
            {
              id = 122,
              name = "",
              type = "",
              shape = "rectangle",
              x = 72,
              y = 992,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 26,
          name = "guests1",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 102,
              name = "",
              type = "",
              shape = "rectangle",
              x = 104,
              y = 1008,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 781,
              visible = true,
              properties = {}
            },
            {
              id = 103,
              name = "",
              type = "",
              shape = "rectangle",
              x = 56,
              y = 992,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 778,
              visible = true,
              properties = {}
            },
            {
              id = 104,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 992,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 727,
              visible = true,
              properties = {}
            },
            {
              id = 105,
              name = "",
              type = "",
              shape = "rectangle",
              x = 184,
              y = 1008,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 736,
              visible = true,
              properties = {}
            },
            {
              id = 108,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 1016,
              width = 16,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 27,
          name = "highobj2",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 65,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 1080,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 72,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 1080,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 73,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 1080,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 75,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 1064,
              width = 16,
              height = 16,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            },
            {
              id = 140,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 1080,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 141,
              name = "",
              type = "",
              shape = "rectangle",
              x = 144,
              y = 1084,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 142,
              name = "",
              type = "",
              shape = "rectangle",
              x = 54,
              y = 1082,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 28,
          name = "highobj1",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 66,
              name = "",
              type = "",
              shape = "rectangle",
              x = 40,
              y = 1160,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 70,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 1160,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 71,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 1160,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 74,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 1144,
              width = 16,
              height = 16,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            },
            {
              id = 137,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 1160,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 138,
              name = "",
              type = "",
              shape = "rectangle",
              x = 244,
              y = 1164,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 139,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1164,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 29,
          name = "guard2",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 67,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 128,
              y = 1144,
              width = 32,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 91,
              name = "",
              type = "",
              shape = "polyline",
              x = 0,
              y = 1208,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 80, y = 0 },
                { x = 112, y = 32 },
                { x = 112, y = 224 },
                { x = 80, y = 256 },
                { x = 80, y = 336 }
              },
              properties = {}
            },
            {
              id = 92,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 1208,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 93,
              name = "",
              type = "",
              shape = "rectangle",
              x = 288,
              y = 1208,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 94,
              name = "",
              type = "",
              shape = "polyline",
              x = 288,
              y = 1208,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = -80, y = 0 },
                { x = -112, y = 32 },
                { x = -112, y = 224 },
                { x = -80, y = 256 },
                { x = -80, y = 336 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 30,
          name = "guard1",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PathGraph"
          },
          objects = {
            {
              id = 55,
              name = "",
              type = "",
              shape = "rectangle",
              x = 96,
              y = 1224,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 57,
              name = "trigger",
              type = "Trigger",
              shape = "rectangle",
              x = 128,
              y = 1232,
              width = 32,
              height = 8,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "groundobjects"
              }
            },
            {
              id = 68,
              name = "",
              type = "",
              shape = "polyline",
              x = 96,
              y = 1224,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 32 },
                { x = 24, y = 80 },
                { x = 24, y = 168 },
                { x = 0, y = 216 },
                { x = 0, y = 304 }
              },
              properties = {}
            },
            {
              id = 56,
              name = "",
              type = "",
              shape = "rectangle",
              x = 192,
              y = 1224,
              width = 24,
              height = 32,
              rotation = 0,
              gid = 646,
              visible = true,
              properties = {}
            },
            {
              id = 69,
              name = "",
              type = "",
              shape = "polyline",
              x = 192,
              y = 1224,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polyline = {
                { x = 0, y = 0 },
                { x = 0, y = 32 },
                { x = -24, y = 80 },
                { x = -24, y = 168 },
                { x = 0, y = 208 },
                { x = 0, y = 304 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 31,
          name = "wine1",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 8,
              name = "",
              type = "Trigger",
              shape = "rectangle",
              x = 136,
              y = 1232,
              width = 16,
              height = 56,
              rotation = 0,
              visible = true,
              properties = {
                ["activateobjectslayer"] = "highobjects"
              }
            },
            {
              id = 17,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1248,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 18,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 1248,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 19,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 1400,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 20,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 1400,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 23,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 1248,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 24,
              name = "",
              type = "",
              shape = "rectangle",
              x = 240,
              y = 1248,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 811,
              visible = true,
              properties = {}
            },
            {
              id = 16,
              name = "",
              type = "",
              shape = "rectangle",
              x = 240,
              y = 1328,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 15,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1416,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 14,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 1328,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 13,
              name = "",
              type = "",
              shape = "rectangle",
              x = 56,
              y = 1336,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 12,
              name = "",
              type = "",
              shape = "rectangle",
              x = 240,
              y = 1408,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 11,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 1416,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 10,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 1416,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 9,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 1328,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 7,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 1408,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 6,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1400,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 813,
              visible = true,
              properties = {}
            },
            {
              id = 5,
              name = "",
              type = "",
              shape = "rectangle",
              x = 232,
              y = 1336,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 4,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1328,
              width = 8,
              height = 24,
              rotation = 0,
              gid = 812,
              visible = true,
              properties = {}
            },
            {
              id = 183,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1408,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 184,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1328,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 185,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 1328,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 189,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 1408,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 190,
              name = "",
              type = "",
              shape = "rectangle",
              x = 48,
              y = 1248,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 191,
              name = "",
              type = "",
              shape = "rectangle",
              x = 136,
              y = 1472,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            },
            {
              id = 192,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 1248,
              width = 16,
              height = 16,
              rotation = 0,
              gid = 10,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "index",
          id = 33,
          name = "sparks",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "BulletLayer"
          },
          objects = {}
        },
        {
          type = "objectgroup",
          draworder = "index",
          id = 37,
          name = "textcards",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {}
        },
        {
          type = "objectgroup",
          draworder = "index",
          id = 34,
          name = "playershots",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "BulletLayer",
            ["trailcolor"] = "#80ffd8d8"
          },
          objects = {}
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 35,
          name = "playerteam",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["script"] = "PlayerTeam"
          },
          objects = {}
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 36,
          name = "wineitems",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {
            ["itemtileset"] = "wineitems",
            ["script"] = "ItemsLayer"
          },
          objects = {}
        }
      }
    }
  }
}
