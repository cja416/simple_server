CFLAGS :=-std=c++11 -Wall -g #-O3
CXXFLAGS :=$(CFLAGS)
cc := g++
 
SOURCE :=$(wildcard *.cpp)
OBJ := $(patsubst %.cpp,%.o, $(SOURCE))
 
TARGET := webserver
#OBJ := epoll.o requestData.o threadpool.o util.o main.o
 
$(TARGET): $(OBJ)
	$(cc) $(CXXFLAGS) $(OBJ) -o $(TARGET) -lpthread
 
 
.PHONY:
clean:
	rm -rf *.o
cleanall: clean
	rm -rf $(TARGET)
