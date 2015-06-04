# domestication_sims
A simulation pipeline for maize domestication

# Very hacky wtf are you doing way to compile ms_slide.cc

1. Download libsequence: `git clone ...`
2. `cp ms_slide.cc libsequence/examples`
3. `emacs examples/Makefile.am`

Change the first line to include ms_slide:

    check_PROGRAMS= baseComp valid_dna translateTest \
        slidingWindow slidingWindow2 PolyTableIterators  correlations \
        critical_values ufs msmm freerec bottleneck fragments \
        msstats polySiteVector_test ms_slide
        
And add ms_slide to the sources:

    msstats_SOURCES=msstats.cc
    polySiteVector_test_SOURCES=polySiteVector_test.cc
    ms_slide_SOURCES=ms_slide.cc
    
4. `autoreconf --install`
5. `./configure --prefix=$HOME`
6. `make`
7. `make check`

There should be a shiny ms_slide executable in your examples dir.
