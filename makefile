# ArkOS Makefile

# Compiler and flags
CC = gcc
LD = ld
CFLAGS = -m32 -ffreestanding -nostdlib -nostdinc -fno-builtin -fno-stack-protector -fno-exceptions -fno-rtti
LDFLAGS = -Ttext 0x1000  # This specifies the load address for the linker.

# Paths
KERNEL_SRC = kernel
KERNEL_OUT = kernel/arkos.bin  # Final output binary

# Source and object files
SRC_FILES = $(KERNEL_SRC)/main.c \
            $(KERNEL_SRC)/file_system.c \
            $(KERNEL_SRC)/calculator.c \
            $(KERNEL_SRC)/lvm.c \
            $(KERNEL_SRC)/package_manager.c \
            $(KERNEL_SRC)/web_server.c \
            $(KERNEL_SRC)/fail2ban.c \
            $(KERNEL_SRC)/container.c
OBJ_FILES = $(SRC_FILES:.c=.o)

# Default target: Compile and link the kernel
all: $(KERNEL_OUT)

# Compile each .c file into .o files
$(KERNEL_SRC)/%.o: $(KERNEL_SRC)/%.c
	$(CC) $(CFLAGS) -Iinclude -c $< -o $@

# Link all .o files into the final kernel binary
$(KERNEL_OUT): $(OBJ_FILES)
	$(LD) $(LDFLAGS) -o $(KERNEL_OUT) $(OBJ_FILES)

# Clean the project
clean:
	rm -f $(OBJ_FILES) $(KERNEL_OUT)