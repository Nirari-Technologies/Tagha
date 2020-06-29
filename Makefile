CC = gcc
#CC = clang-9
CFLAGS = -Wextra -Wall -std=c99 -s -O2
TFLAGS = -Wextra -Wall -std=c99 -g -O2
PFLAGS = -Wextra -Wall -std=c99 -pg -O2
# -static

taghatest:
	$(CC) $(CFLAGS) test_driver.c -L. -ltagha -o taghatest

debug:
	$(CC) $(TFLAGS) test_driver.c -L. -ltagha -o taghatest

clean:
	$(RM) *.o
