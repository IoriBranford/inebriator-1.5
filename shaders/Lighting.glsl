uniform mediump vec3 biolumcolor;

vec4 effect(vec4 color, Image tex, vec2 texture_coords, vec2 screen_coords)
{
    vec4 texturecolor = Texel(tex, texture_coords);
	float biobrightness = 1.0 - clamp(length(vec3(1.0, 1.0, 1.0) - texturecolor.rgb) * 10.0, 0.0, 1.0);
    return texturecolor * color + vec4(biolumcolor, 1.0) * biobrightness;
}