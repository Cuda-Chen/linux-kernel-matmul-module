obj-m := matmul.o
KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR) M=$(PWD) modules

check: all

clean:
	make -C $(KDIR) M=$(PWD) clean

distclean: clean

indent:
	@echo "Formatting files with clang-format.."
	@if ! hash clang-format-12; then echo "clang-format-12 is required to indent"; fi
	clang-format-12 -i *.c
