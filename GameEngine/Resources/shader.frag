#version 330 core
out vec4 FragColor;

in vec3 vertexColor; // <-- Recived from vertex
in vec2 TexCoord;

uniform sampler2D ourTexture;

void main()
{                       // Aplly Texture to the Object
    FragColor = texture(ourTexture, TexCoord) * vec4(vertexColor, 1.0);
} 