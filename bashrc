#!/usr/bin/bash

# ~/.bashrc: executed by bash(1) for non-login shells.
# ln -s ~/.bash_profile ~/.profile

source ~/.bash/config

# added by travis gem
[ -f /Users/duksis/.travis/travis.sh ] && source /Users/duksis/.travis/travis.sh

PATH="/Users/duksis/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/duksis/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/duksis/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/duksis/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/duksis/perl5"; export PERL_MM_OPT;

eval $(ssh-agent)
