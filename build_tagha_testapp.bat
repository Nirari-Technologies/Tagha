@echo off

set CC=clang
set CFLAGS=-Wextra -Wall -std=c99 -s -O2

%CC% %CFLAGS% -c libharbol/stringobj.c libharbol/vector.c libharbol/hashmap.c libharbol/mempool.c libharbol/linkmap.c tagha_api.c

llvm-ar cr libtagha.a stringobj.o vector.o hashmap.o mempool.o linkmap.o tagha_api.o

%CC% %CFLAGS% test_hostapp.c -L. -llibtagha -o taghavmgcc_hosttest.exe

del *.o