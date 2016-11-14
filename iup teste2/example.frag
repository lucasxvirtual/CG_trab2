#version 410

uniform vec4 o;
uniform vec4 l;


varying vec4 v;
varying vec4 normal; 

out vec4 cor;

void main(void)
{
	vec4 lVetor = normalize(l - v);
	vec4 rVetor = 2 * dot(lVetor, normal) * normal - lVetor;
	vec4 vVetor = normalize(o - v);

	cor = 0.1 * vec4(0, 1, 0, 1) + 0.5 * pow(max(dot(rVetor, vVetor), 0), 40) * vec4(1, 1, 1, 1) + 1 * max(dot(lVetor, normal), 0) * vec4(0, 1, 0, 1);
}
