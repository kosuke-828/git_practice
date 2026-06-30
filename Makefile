CC=gcc
CFLAGS= -Wall -Wextra -g -O0 
ASANFLAGS= -fsanitize =address
BUILD_DIR=build
TARGET=$(BUILD_DIR)/practice
ASAN_TARGET=$(BUILD_DIR)/practice_asan
SRC=main.c message.c 
.PHONY
all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

$(ASAN_TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(ASANFLAGS) $(SRC) -o $(ASAN_TARGET)

run: all
	./$(TARGET)

asan: all
	./$(ASAN_TARGET)
clean:
	rm -rf $(BUILD_DIR)