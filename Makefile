obj-m := matmul.o
KDIR = /lib/modules/$(shell uname -r)/build

all:
	make -C $(KDIR) M=$(PWD) modules

check: all

clean:
	make -C $(KDIR) M=$(PWD) clean

distclean: clean
