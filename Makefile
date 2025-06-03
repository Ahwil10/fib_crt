# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++23 -O3 -fopenmp -Iinclude
LDFLAGS = -mconsole  # ensures it links as a console app

# Files
SRC = src/main.cpp src/fib.cpp src/crt.cpp
OBJ = $(SRC:.cpp=.o)
BIN = fib_crt.exe

# Build target
all: $(BIN)

$(BIN): $(OBJ)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $(BIN) $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(BIN)







