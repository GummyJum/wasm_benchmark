# Preface
This is a simple benchmark for go vs go-wasm.

The goal is to compare the wasm vs. native implementations. (I saw several JS vs Wasm compare but not a Go vs Go-Wasm)

The benchmark programs were taken from the benchmark game https://benchmarksgame-team.pages.debian.net/benchmarksgame/index.html.

# Results
| Name                 |   AVG Go [s] |   STD Go [s] |   AVG Go-Wasm (chrome) [s] |   STD Go-Wasm (chrome) [s] |
|:---------------------|-------------:|-------------:|---------------------------:|---------------------------:|
| binary-tree          |    0.910164  |   0.100876   |                    3.67258 |                   0.318651 |
| binary-tree-freelist |    0.186305  |   0.00728738 |                    4.9043  |                   0.524036 |
| chameneosredux       |   17.2151    |   0.256475   |                   20.0017  |                   1.79254  |
| fannkuch             |   32.3181    |   0.933487   |                  143.66    |                  30.8457   |
| meteor-contest       |    0.0668207 |   0.00126192 |                    0.355   |                   0.118848 |
| nbody                |    5.68711   |   1.20509    |                    9.47556 |                   1.10578  |
| pidigits             |    1.25361   |   0.129496   |                   22.3246  |                  10.3709   |
| spectral-norm        |    3.63128   |   0.327693   |                    3.98239 |                   0.435794 |

![](/raw_plot.png)

![](/ratio_plot.png)

# Run it youself
## Runtime Environment
The programs were compiled in default settings (go compiler and and ran nativly on my laptop).
I used Chrome 87 for the wasm runtime which is my default browser at the time.

## Compile
Assuming you have Go and you are using windows you can run:

```
compile_win.bat
```

## Run
Then for running the Go binaries you can use 
```
run_win.bat 
```

For Wasm use either the Go two-liner simple http-server:
```
$ go get github.com/snwfdhmp/simplehttp #install
$ simplehttp
INFO[0000] Serving ./ over 0.0.0.0:8080... Stop with ^C
```

Or the Python version
```
python -m http.server
```




