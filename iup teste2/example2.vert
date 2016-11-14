#version 410

in vec4 vtx;
in vec4 n;
varying vec4 cor2;
uniform vec4 l;
uniform vec4 l2;
uniform vec4 o;
uniform mat4 mvp;
void main(void)
{
	vec4 lVetor = normalize(l - vtx);
	vec4 rVetor = 2 * dot(lVetor, n) * n - lVetor;
	vec4 vVetor = normalize(o - vtx);
	vec4 l2Vetor = normalize(l2 - vtx);
	vec4 r2Vetor = 2 * dot(l2Vetor, n) * n - l2Vetor;
	
	cor2 = 0.1 * vec4(0, 0, 1, 1) + 0.5 * pow(max(dot(rVetor, vVetor), 0), 40) * vec4(1, 1, 1, 1) + 1 * max(dot(lVetor, n), 0) * vec4(0, 0, 1, 1) + 0.5 * pow(max(dot(r2Vetor, vVetor), 0), 40) * vec4(1, 1, 1, 1) + 1 * max(dot(l2Vetor, n), 0) * vec4(0, 0, 1, 1);
	gl_Position = mvp * vtx;
	
}