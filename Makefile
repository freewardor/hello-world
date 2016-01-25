
HOST_CFLAGS = -g -O2 -Wall 

all: PRE TEST_LINUX

OUTPUT_DIR = ./out

LINUX_SRC = test.c 

PRE:
	@mkdir -p $(OUTPUT_DIR)

TEST_LINUX:
	gcc $(LINUX_SRC) $(HOST_CFLAGS) -o $(OUTPUT_DIR)/test

clean:
	@rm -rf $(OUTPUT_DIR)
	@rm *.o > /dev/null 2>&1; true