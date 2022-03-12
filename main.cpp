#include <iostream>
#include <fstream>
#include <string>
#include <glad/gl.h>
#include <GLFW/glfw3.h> //load OPenGL function from the Driver

GLuint loadShader(const std:: string& filePath, GLenum shaderType){
    GLuint shader= glCreateShader(shaderType);

    std::ifstream file(filePath);
    std::string sourceCode= std::string(std::istreambuf_iterator<char>(file),std::istreambuf_iterator<char>());
    const char* sourceCodeStr=sourceCode.c_str();

    glShaderSource(shader,1,&sourceCodeStr,nullptr); //null
    glCompileShader(shader);

   return shader;

}

int main(int, char**) {

     if(!glfwInit()){
        std::cerr << "Failed to initialize GLFW" << std::endl;
        exit(-1);
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3); //Deal with openGL 3.3
     glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);

    GLFWwindow* window = glfwCreateWindow(500, 500, "Example", nullptr, nullptr);
    if(!window){
        std::cerr << "Failed to create window" << std::endl;
        glfwTerminate();
        exit(-1);
    }

   glfwMakeContextCurrent(window); // detect the window use in drow
   gladLoadGL(glfwGetProcAddress); //need to be call beforen use openGL

   GLuint program=glCreateProgram();
   GLuint vs=loadShader("assets/shaders/simple.vert",GL_VERTEX_SHADER);
   glAttachShader(program,vs);
   //glDeleteShader(vs);

   GLuint fs=loadShader("assets/shaders/simple.frag",GL_FRAGMENT_SHADER);
   glAttachShader(program,fs);
   //glDeleteShader(fs);

   glLinkProgram(program);


   GLuint VAO;

   glGenVertexArrays(1,&VAO);  //no benefits untill now



    GLint timeLoc=glGetUniformLocation(program,"time");

    while(!glfwWindowShouldClose(window)){
        glClearColor(0.2, 0.4, 0.6, 1.0); // detect th color that use when clear
        glClear(GL_COLOR_BUFFER_BIT); // clear the screen

        glBindVertexArray(VAO);
        glUseProgram(program);

        glUniform1f(timeLoc,(float)glfwGetTime());

        glDrawArrays(GL_TRIANGLES,0,3); // 0 NUMBER OF SKIP POINTS

        glfwSwapBuffers(window); // to show the drow in back bufffer to solve th flucuring الرعشة
        glfwPollEvents();
    }

    glDeleteProgram(program);
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
