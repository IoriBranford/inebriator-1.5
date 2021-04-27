// adapted from https://www.geeks3d.com/20110316/shader-library-simple-2d-effects-sphere-and-ripple-in-glsl/

uniform mediump float time;
uniform mediump float screenminsize;
uniform mediump float screensurfacey;

vec4 position(mat4 transform_projection, vec4 vertex_position) {
    return transform_projection * vertex_position;
}

vec4 effect( vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords ) {
    vec2 p = (2.0*screen_coords - love_ScreenSize.xy) / screenminsize;
    float len = length(p);
    float surfaceDamper = 1.0 + clamp((screen_coords.y - screensurfacey)*16.0/screenminsize, -1.0, 0.0);
    vec2 warp = surfaceDamper * (p/len)*cos(len*12.0-time*4.0)/256.0;
    vec2 uv = texture_coords + warp;
    vec4 texturecolor = Texel(tex, uv);
    return texturecolor * color;
}