sources=$(shell find src -type f)
target=quake-move.pk3

demo-sources=$(shell find demo -type f)
demo-target=demo.pk3


build/$(target): $(sources)
	7z a -tzip $@ ./src/*

build/$(demo-target): $(demo-sources)
	7z a -tzip $@ ./demo/*

clean:
	rm -r build/*

.PHONY: clean
