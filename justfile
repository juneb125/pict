# pict justfile :)

default:
    @just --list

build out_file='pict':
    cat src/utils > {{ out_file }}
    tail --lines=+2 src/main >> {{ out_file }}

clean:
    rm -rf ./test/*
