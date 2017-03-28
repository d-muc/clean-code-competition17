DC=ldmd2
DFLAGS=-O -release -inline -mcpu=native

bin:
	mkdir -p bin

bin/d: task1.d | bin
	$(DC) $(DFLAGS) $< -of$@



test.small:
	rdmd gen.d --columns 3 --lines 3 > $@

test.medium:
	rdmd gen.d --columns 10 --lines 100000 > $@

test.large:
	rdmd gen.d --columns 10 --lines 10000000 > $@

bench: test.large

clean:
	rm -rf bin
