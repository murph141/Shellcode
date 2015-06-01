AS = as
LD = ld
SOURCES = exit.s
EXECUTABLE = $(patsubst %.s, %, $(SOURCES))

.PHONY: all clean

all: $(SOURCES) $(EXECUTABLE)

.s:
	$(AS) $(SOURCES)
	$(LD) a.out -o $(EXECUTABLE)

clean:
	rm -rf $(EXECUTABLE) a.out
