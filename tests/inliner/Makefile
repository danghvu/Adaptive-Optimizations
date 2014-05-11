SRC_DIR = source
LL_DIR  = llvm-ll

C_FILES    = $(shell ls $(SRC_DIR) | grep -v "\.cpp" | grep "\.c")
CPP_FILES  = $(shell ls $(SRC_DIR) | grep "\.cpp")
LLI_FILES  = $(foreach FILE, $(C_FILES), $(LL_DIR)/$(FILE:.c=.ll)) $(foreach FILE, $(CPP_FILES), $(LL_DIR)/$(FILE:.cpp=.ll))

.PHONY: clean

all: $(LLI_FILES)

# Compiles .c files to .ll files and binary
$(LL_DIR)/%.ll: $(SRC_DIR)/%.c
	clang -S -emit-llvm $< -o $@

$(LL_DIR)/%.ll: $(SRC_DIR)/%.cpp
	clang++ -S -emit-llvm $< -o $@

clean:
	rm $(LLI_FILES) $(DIFF_FILES) $(OUT_FILES)
