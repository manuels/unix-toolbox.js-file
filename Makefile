FILE_PATH=./src/src/.libs


file:
	cp ${FILE_PATH}/lt-file ${FILE_PATH}/lt-file.bc
  # -O3 results in 'Maximum call stack size exceeded'
	emcc -O2 -minify 1 --pre-js ./toolbox-base/pre.js ${FILE_PATH}/lt-file.bc ${FILE_PATH}/getline.o ./libc/regex/*.o ./zlib/src/libz.a -o file-worker.js

all: file

