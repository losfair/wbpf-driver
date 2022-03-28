obj-m += wbpf.o
wbpf-objs := wbpf_main.o wbpf_device.o

PWD := $(CURDIR)
KSRC := ${KSRC}
export ARCH := arm
export CROSS_COMPILE := arm-linux-gnueabihf-

all: 
	make -C $(KSRC) M=$(PWD) modules 

clean: 
	make -C $(KSRC) M=$(PWD) clean
