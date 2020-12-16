# Preface
This is a simple benchmark for c vs go vs wasm-go.

I want to compare the wasm vs. native implementations on pidigits, nbody and binay-tree.

The code for the benchmark programs was taken from the go benchmark folder https://go.googlesource.com/go/+/c4f5421/test/bench/shootout

## TODO:
- compile all go to exe
- compile all c to exe
- compile all go to wasm

# Runtime Environment
The programs were compiled in default settings (go compiler and and ran nativly on my laptop.
I used Chrome 87 for the wasm runtime.

Go two-liner simple http-server for testing:
```
$ go get github.com/snwfdhmp/simplehttp #install
$ simplehttp
INFO[0000] Serving ./ over 0.0.0.0:8080... Stop with ^C
```

Or use the Python version
```
python -m http.server
```


