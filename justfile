# pict justfile :)

# list recipes
default:
    @just --list

# build pict
build out_file='pict':
    cat src/utils > {{ out_file }}
    tail --lines=+2 src/main >> {{ out_file }}

# clean out ./test/
clean:
    rm -rf ./test/*
