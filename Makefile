CFLAGS=-Wall -O2 --std=c17
SRC_DIR=src
OUT_DIR=out
SRCS=$(wildcard $(SRC_DIR)/*.c)
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OUT_DIR)/%.o)
TARGET = doomrpg

all: $(OUT_DIR)/$(TARGET)

$(OUT_DIR)/$(TARGET): $(OBJS)
	C:\msys64\mingw64\bin\gcc $(OBJS) -o $@ -lmingw32 -lSDL2main -lSDL2 -lSDL2_mixer -lz

$(OUT_DIR)/%.o: $(SRC_DIR)/%.c
	C:\msys64\mingw64\bin\gcc $(CFLAGS) -c $< -o $@
