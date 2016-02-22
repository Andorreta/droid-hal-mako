# Makefile for mkbootimg

SRCS+= mkbootimg.c

VPATH+= ../libmincrypt
SRCS+= dsa_sig.c
SRCS+= p256.c
SRCS+= p256_ec.c
SRCS+= p256_ecdsa.c
# Mako hal example zone START (delete others if build fails)
SRCS+= rsa.c
SRCS+= rsa_e_3.c
SRCS+= rsa_e_f4.c
SRCS+= sha.c
# Mako hal example zone END (delete others if build fails)
SRCS+= sha256.c

CPPFLAGS+= -I.
CPPFLAGS+= -I../include

#LIBS+=

OBJS=$(SRCS:.c=.o)

all: mkbootimg

mkbootimg: $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LIBS)

clean:
	rm -rf $(OBJS) mkbootimg

