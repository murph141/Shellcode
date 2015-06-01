GCC = gcc
CFLAGS = -ggdb -fno-stack-protector
SOURCES = overflow.c
OBJS = $(SOURCES:.c=.o)
HDRS = 
EXECUTABLE = overflow

# For the text file (exploit), input the necessary padding plus the address to redirect the program
# For easier string generation use:
# 	perl -e 'print "A"xN . "\xXX\xXX\xXX"' (where N is the number to pad and \xXX denotes a hex string for the address of the Test function

.PHONY: all clean

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJS) $(HDRS)
	$(GCC) $(CFLAGS) $(OBJS) -o $@

.c.o:
	$(GCC) $(CFLAGS) -c $*.c

clean:
	rm -rf *.o $(EXECUTABLE)
