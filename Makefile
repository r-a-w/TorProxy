CC=gcc
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
BUILD_DIR := build
KBUILD_DIR := $(PWD)/build/kernel_module
SRC_DIR := src


all: kbuild relay_pop torproxy_module

kbuild: $(KBUILD_DIR)
	@echo "obj-m := torproxy_module.o" > $(KBUILD_DIR)/Kbuild

$(KBUILD_DIR): $(BUILD_DIR)
	@mkdir $(KBUILD_DIR)

$(BUILD_DIR):
	@mkdir $(PWD)/$(BUILD_DIR)



torproxy_module: torproxy_module.o
	
torproxy_module.o:
	$(shell cp $(SRC_DIR)/torproxy_module.c $(KBUILD_DIR))
	make -C $(KDIR) M=$(KBUILD_DIR) modules

relay_pop: $(BUILD_DIR)/relay_pop.o
	$(CC) -o relay_pop $(BUILD_DIR)/relay_pop.o

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c -o $@ $<


.PHONY: clean

clean: 
	@rm -f $(BUILD_DIR)/*.o $(KBUILD_DIR)/*.o $(KBUILD_DIR)/*.ko $(KBUILD_DIR)/*.symvers $(KBUILD_DIR)/*.order $(KBUILD_DIR)/*.c


install:
	mkdir -p /lib/modules/$(shell uname -r)/torproxy
	cp build/kernel_module/torproxy_module.ko /lib/modules/$(shell uname -r)/torproxy
	sudo depmod -a
	mkdir -p /usr/local/lib/torproxy
	cp relay_pop /usr/local/lib/torproxy
	cp src/install/torproxy.sh /usr/local/bin/torproxy
	chown root:root /usr/local/lib/torproxy/relay_pop
	chown root:root /usr/local/bin/torproxy
	chmod u+sx /usr/local/lib/torproxy/relay_pop
	chmod u+sx /usr/local/bin/torproxy

