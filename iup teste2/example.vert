#version 410

uniform mat4 mvp;
in vec4 vtx;

in vec4 n;

varying vec4 v; 
varying vec4 normal; 

void main(void)
{
	normal = n;
	v = vtx;
	gl_Position = mvp * vtx;
}
