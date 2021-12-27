FROM gcc:10.3.0
# to use version 10.3.0 of c++ 
COPY . /usr/src/my_project
# to copy all files in our directory to /usr/src/my_project .. 
# my_project will be created directory which contains all my files
WORKDIR /usr/src/my_project
# it is like cd command , to go to this path and all commands will run inside this directory
RUN g++ -o output main.cpp
# to run the main.cpp file and the output is output file
# g++ is GNU C++ , -o names the executable which is output
CMD ["./output"]
# to run the output in terminal