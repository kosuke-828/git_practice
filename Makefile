CC=gcc
CFLAGS= -Wall -Wextra -g
BUILD_DIR=build
TARGET=$(BUILD_DIR)/practice
SRC=main.c message.c 

all: $(TARGET)
$(TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -rf $(BUILD_DIR)