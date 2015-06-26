CC		= gcc
CFLAGS		= -ansi -std=c99 -Wall -Wextra -O2 -Werror -DDEBUG
LIBS		= 

# all source files
_SOURCES	= main.c

# the output executable
EXECUTABLE	= jvm

all: clean $(OBJECTS) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) -o $(EXECUTABLE) $(CFLAGS) $(LIBS) main.c


clean:
	rm -f *.o
	rm -f *.tmp
	rm -f $(EXECUTABLE)

