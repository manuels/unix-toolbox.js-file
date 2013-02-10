all:
	cd ./src/src/.libs/; emcc --pre-js ../../../toolbox-base/pre.js lt-file.bc getopt_long.o asprintf.o vasprintf.o getline.o ../../../libc/regex/*.o ../../../zlib/src/libz.a -o a.out.js
