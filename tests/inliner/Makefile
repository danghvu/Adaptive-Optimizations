SRC_DIR = source
LL_DIR  = llvm-ll
OUT_DIR = output

C_FILES    = $(shell ls $(SRC_DIR) | grep -v "\.cpp" | grep "\.c")
CPP_FILES  = $(shell ls $(SRC_DIR) | grep "\.cpp")
LLI_FILES  = $(foreach FILE, $(C_FILES), $(LL_DIR)/$(FILE:.c=.ll)) $(foreach FILE, $(CPP_FILES), $(LL_DIR)/$(FILE:.cpp=.ll))
DIFF_FILES  = $(foreach FILE, $(C_FILES), $(OUT_DIR)/$(FILE:.c=.diff)) $(foreach FILE, $(CPP_FILES), $(OUT_DIR)/$(FILE:.cpp=.diff))
OUT_FILES   = $(foreach FILE, $(DIFF_FILES), $(FILE:.diff=.out-nat)) $(foreach FILE, $(DIFF_FILES), $(FILE:.diff=.out-jit))

.PHONY: clean

all: $(LLI_FILES) $(OUT_FILES) $(DIFF_FILES)

$(OUT_DIR)/%.diff: $(OUT_DIR)/%.out-nat $(OUT_DIR)/%.out-jit
	diff $(OUT_DIR)/$*.out-nat $(OUT_DIR)/$*.out-jit > $(OUT_DIR)/$*.diff

$(OUT_DIR)/%.out-nat: $(SRC_DIR)/%.c
	gcc $< -o $*.out; ./$*.out > $@; rm $*.out

$(OUT_DIR)/%.out-nat: $(SRC_DIR)/%.cpp
	g++ $< -o $*.out; ./$*.out > $@; rm $*.out

$(OUT_DIR)/%.out-jit: $(LL_DIR)/%.ll
	lli -enable-online-profile $< > $@

# Compiles .c files to .ll files and binary
$(LL_DIR)/%.ll: $(SRC_DIR)/%.c
	clang -S -emit-llvm $< -o $@

$(LL_DIR)/%.ll: $(SRC_DIR)/%.cpp
	clang++ -S -emit-llvm $< -o $@

clean:
	rm $(LLI_FILES) $(DIFF_FILES) $(OUT_FILES)
