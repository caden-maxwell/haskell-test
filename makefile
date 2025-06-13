GHC := ghc
BUILD_DIR := build
SOURCES := $(wildcard *.hs)
OBJS    := $(patsubst %.hs,$(BUILD_DIR)/%.o,$(SOURCES))
GHCFLAGS := -Wall
TARGET := main.bin

# Only build by default
$(TARGET): $(OBJS)
	$(GHC) $? -o $@

$(BUILD_DIR)/%.o: %.hs | $(BUILD_DIR)
	$(GHC) $(GHCFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

.PHONY: run clean

run: $(TARGET)
	./$<

clean:
	rm -rf $(TARGET) $(BUILD_DIR)
