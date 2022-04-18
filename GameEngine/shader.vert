#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1

out vec3 vertexColor; // specify a color output to the fragment shader

void main()
{
    gl_Position = vec4(aPos, 1.0); // see how we directly give a vec3 to vec4's constructor
    vertexColor = aColor; // set ourColor to the input color we got from the vertex data
}

// https://marketplace.visualstudio.com/items?itemName=DanielScherzer.GLSL <- Resource to extension