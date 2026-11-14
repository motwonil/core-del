.PHONY: usage
# variables
BUILD := build
# commands
usage:
	@cat Makefile.usage.txt
cmake:
	@cmake -B $(BUILD) -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
ninja:
	@ninja -C $(BUILD)
clean:
	@rm -fr $(BUILD)
	@git restore $(BUILD)
