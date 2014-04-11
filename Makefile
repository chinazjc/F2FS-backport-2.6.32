obj-m += f2fs.o

f2fs-y		:= dir.o file.o inode.o namei.o hash.o super.o
f2fs-y		+= checkpoint.o gc.o data.o node.o segment.o recovery.o
f2fs-y += debug.o
#f2fs-y += xattr.o
#f2fs-y += acl.o
all:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
