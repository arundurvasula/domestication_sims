# domestication_sims
A simulation pipeline for maize domestication

# Compiling libsequence
1. `./configure --prefix=$HOME && make && make install`

# Compiling ms_slide.cc
1. install libsequence in your home directory with `./configure --prefix=$HOME && make && make install`
2. go to dir with ms_slide: `g++ -g -O2 -std=c++11  -L/home/adurvasu/lib -o ms_slide ms_slide.cc  -lsequence -lz`

# Compiling fwdpp
1. Clone repo
2. `./configure LDFLAGS="$LDFLAGS -L$HOME/lib" --prefix=$HOME`
3. `make`
4. `make install`
