CC		= gcc
CFLAGS		= -ansi -std=c99 -Wall -Wextra -O2 -Werror -DDEBUG
LIBS		= 

# all source files
_SOURCES	= main.c

# the output executable
EXECUTABLE	= jvm

all: clean $(OBJECTS) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	/opt/frama-c/bin/frama-c -kernel-msg-key pp -wp -wp-rte -wp-out /tmp/frama/ -slevel 10 main.c
	$(CC) -o $(EXECUTABLE) $(CFLAGS) $(LIBS) main.c


clean:
	rm -f *.o
	rm -f *.tmp
	rm -f $(EXECUTABLE)

