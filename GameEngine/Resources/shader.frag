#version 330 core
out vec4 FragColor;

in vec3 vertexColor; // <-- Recived from vertex
in vec2 TexCoord;

uniform sampler2D texture1;
uniform sampler2D texture2;

void main()
{               // Mix lets mix in two textures into one 
    FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2);
} 