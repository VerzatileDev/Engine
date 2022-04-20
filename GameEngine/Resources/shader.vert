#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
layout (location = 2) in vec2 aTexCoord;

out vec3 vertexColor; // specify a color output to the fragment shader
out vec2 TexCoord;
uniform float xOffset; // Horizontal offset Recived from cpp Rendering Part !

void main()
{
    gl_Position = vec4(aPos.x + xOffset, aPos.y, aPos.z, 1.0);
    vertexColor = aColor; // set ourColor to the input color we got from the vertex data
    TexCoord = aTexCoord;
}

// https://marketplace.visualstudio.com/items?itemName=DanielScherzer.GLSL <- Resource to extension