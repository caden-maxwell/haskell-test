GHC := ghc
SOURCES := main.hs
OBJS := $(SOURCES:.hs=.o)
GHCFLAGS := -Wall
TARGET := main.bin

.PHONY: run clean

run:
	./$(TARGET)

$(TARGET): $(OBJS)
	$(GHC) $? -o $@

%.o: %.hs
	$(GHC) $(GHCFLAGS) -c $< -o $@

clean:
	rm -f *.o *.hi $(TARGET)
