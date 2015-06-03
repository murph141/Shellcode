AS = as
LD = ld
SOURCES = shell.s
EXECUTABLE = $(patsubst %.s,%, $(SOURCES))

.PHONY: all clean

all: $(SOURCES) $(EXECUTABLE)

.s:
	$(AS) --32 $(SOURCES)
	$(LD) -N -m elf_i386 a.out -o $(EXECUTABLE)

clean:
	rm -rf $(EXECUTABLE) a.out
