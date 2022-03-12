#version 330

uniform float time;

in vec4 vertex_color;


out vec4 frag_color;

void main(){
    vec4 change=(sin(time),sin(2*time),sin(3*time),0.1)
    frag_color =vertex_color;

}