GCC = gcc
CFLAGS = -ggdb -fno-stack-protector
SOURCES = serial.c
OBJS = $(SOURCES:.c=.o)
HDRS = 
EXECUTABLE = $(patsubst %.c, %, $(SOURCES))

.PHONY: all clean

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJS) $(HDRS)
	$(GCC) $(CFLAGS) $(OBJS) -o $@

.c.o:
	$(GCC) $(CFLAGS) -c $*.c

clean:
	rm -rf *.o $(EXECUTABLE)
