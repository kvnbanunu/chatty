build: clean format
	@mkdir -p build
	@gcc src/server.c src/setup.c -o build/server
	@gcc src/client.c src/setup.c -o build/client

debug:
	@mkdir -p debug
	@gcc -Wall -Wextra -Wpedantic -Wconversion src/server.c src/setup.c -o debug/server
	@gcc -Wall -Wextra -Wpedantic -Wconversion src/client.c src/setup.c -o debug/client

clean:
	@rm -rf build/
	@rm -rf debug/

format:
	@clang-format -i -style=file include/*.h src/*.c
