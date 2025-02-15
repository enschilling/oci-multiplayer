varying vec2 vUvs;

void main() {
vec4 localPosition = vec4(position, 1.0);
gl_Position = projectionMatrix * modelViewMatrix * localPosition;
vUvs = uv;
}


// const float pi = 3.14159;
// uniform float waterHeight;
// uniform float time;
// uniform int numWaves;
// uniform float amplitude[8];
// uniform float wavelength[8];
// uniform float speed[8];
// uniform vec2 direction[8];
// varying vec3 position;
// varying vec3 worldNormal;
// varying vec3 eyeNormal;

// float wave(int i, float x, float y) {
//     float frequency = 2*pi/wavelength[i];
//     float phase = speed[i] * frequency;
//     float theta = dot(direction[i], vec2(x, y));
//     return amplitude[i] * sin(theta * frequency + time * phase);
// }

// float waveHeight(float x, float y) {
//     float height = 0.0;
//     for (int i = 0; i < numWaves; ++i)
//         height += wave(i, x, y);
//     return height;
// }

// float dWavedx(int i, float x, float y) {
//     float frequency = 2*pi/wavelength[i];
//     float phase = speed[i] * frequency;
//     float theta = dot(direction[i], vec2(x, y));
//     float A = amplitude[i] * direction[i].x * frequency;
//     return A * cos(theta * frequency + time * phase);
// }

// float dWavedy(int i, float x, float y) {
//     float frequency = 2*pi/wavelength[i];
//     float phase = speed[i] * frequency;
//     float theta = dot(direction[i], vec2(x, y));
//     float A = amplitude[i] * direction[i].y * frequency;
//     return A * cos(theta * frequency + time * phase);
// }

// vec3 waveNormal(float x, float y) {
//     float dx = 0.0;
//     float dy = 0.0;
//     for (int i = 0; i < numWaves; ++i) {
//         dx += dWavedx(i, x, y);
//         dy += dWavedy(i, x, y);
//     }
//     vec3 n = vec3(-dx, -dy, 1.0);
//     return normalize(n);
// }

// void main() {
//     vec4 pos = gl_Vertex;
//     pos.z = waterHeight + waveHeight(pos.x, pos.y);
//     position = pos.xyz / pos.w;
//     worldNormal = waveNormal(pos.x, pos.y);
//     eyeNormal = gl_NormalMatrix * worldNormal;
//     gl_Position = gl_ModelViewProjectionMatrix * pos;
// }
