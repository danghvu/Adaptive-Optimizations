SRC_DIR = source
LL_DIR   = llvm-ll
C_FILES  = $(shell ls $(SRC_DIR))
LLI_FILES = $(foreach FILE, $(C_FILES), $(LL_DIR)/$(FILE:.c=.ll))

.PHONY: clean

all: $(LLI_FILES)

%: $(LL_DIR)/%.ll
	lli $<

# Compiles .c files to .ll files:
$(LL_DIR)/%.ll: $(SRC_DIR)/%.c
	clang -S -emit-llvm $< -o $@

clean:
	rm $(LLI_FILES)
