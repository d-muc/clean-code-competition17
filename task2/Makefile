DC=ldmd2
DFLAGS=-O -release -inline -mcpu=native

bin:
	mkdir -p bin

bin/d: task1.d | bin
	$(DC) $(DFLAGS) $< -of$@



test.small:
	rdmd gen.d --bases 20 > $@

test.medium:
	rdmd gen.d --bases 20000 > $@

test.large:
	rdmd gen.d --bases 2000000000 > $@


bench: test.large

clean:
	rm -rf bin
