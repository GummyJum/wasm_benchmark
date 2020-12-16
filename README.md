# Preface
This is a simple benchmark for go vs wasm-go.

I want to compare the wasm vs. native implementations.

The code for the benchmark programs was taken from the go benchmark folder https://go.googlesource.com/go/+/c4f5421/test/bench/shootout
that is also used for the benchmark game

<!-- ## TODO: -->
<!-- - compile all go to exe -->
<!-- - compile all go to wasm -->
<!-- - test exe -->
<!-- - build a simple webpage for the event -->
<!-- - compile all c to exe -->

# Run it youself
## Runtime Environment
The programs were compiled in default settings (go compiler and and ran nativly on my laptop).
I used Chrome 87 for the wasm runtime which is my default browser at the time.

## Compile
Assuming you have Go and you are using windows just run compile_win.bat.


## Run
Then for running the Go binaries you can use run_win.bat and for the web use either the Go two-liner simple http-server:
```
$ go get github.com/snwfdhmp/simplehttp #install
$ simplehttp
INFO[0000] Serving ./ over 0.0.0.0:8080... Stop with ^C
```

Or the Python version
```
python -m http.server
```




