#version 410

uniform mat4 mvp;
in vec4 vtx;

uniform vec4 l;
uniform vec4 l2;
in vec4 n;
uniform vec4 o;

varying vec4 l3;
varying vec4 v; 
varying vec4 normal; 

void main(void)
{
	normal = n;
	l3 = l2;
	v = vtx;
	gl_Position = mvp * vtx;
}
