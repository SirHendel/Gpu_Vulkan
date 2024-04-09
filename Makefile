# Compiler flags
CXX = g++
CFLAGS_RELEASE = -std=c++17 -O2
CFLAGS_DEBUG = -std=c++17 -g -O0

# Libraries
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

# Target names
TARGET_RELEASE = VulkanTest
TARGET_DEBUG = VulkanTest_debug

# Source files
SRCS = main.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

# Default target (release build)
all: release

# Release build target
release: $(TARGET_RELEASE)

$(TARGET_RELEASE): $(OBJS)
	$(CXX) $(CFLAGS_RELEASE) -o $@ $^ $(LDFLAGS)

# Debug build target
debug: $(TARGET_DEBUG)

$(TARGET_DEBUG): $(OBJS)
	$(CXX) $(CFLAGS_DEBUG) -o $@ $^ $(LDFLAGS)

# Compile source files
%.o: %.cpp
	$(CXX) $(CFLAGS_RELEASE) -c -o $@ $<

.PHONY: clean

clean:
	rm -f $(TARGET_RELEASE) $(TARGET_DEBUG) $(OBJS)
