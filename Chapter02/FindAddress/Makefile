GCC = gcc
CFLAGS = -ggdb
SOURCES = attack.c
OBJS = $(SOURCES:.c=.o)
HDRS = 
EXECUTABLE = $(patsubst %.c, %, $(SOURCES))

.PHONY: all clean

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJS) $(HDRS)
	$(GCC) $(CFLAGS) $(OBJS) -o $@
	@execstack -s $(EXECUTABLE)

.c.o:
	$(GCC) $(CFLAGS) -c $*.c

clean:
	rm -rf *.o $(EXECUTABLE)
