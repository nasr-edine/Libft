CC = gcc
CFLAGS = -Iinc
SRC = main.c src/ft_strlen.c
OBJ = $(SRC:.c=.o)  # Object files in the same directory as source files

OUT = test

# Rule to create the final executable
$(OUT): $(OBJ)
	$(CC) $(OBJ) -o $(OUT)

# Rule to compile .c files to .o files, placing them in the same directory as the .c files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean the object files
clean:
	rm -f $(OBJ)

# Remove both object files and executable
fclean: clean
	rm -f $(OUT)

# Rebuild everything
re: fclean $(OUT)
