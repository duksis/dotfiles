#!/bin/bash

# google from comapndline
function google {
  open https://www.google.com/search?q=`ruby -r cgi -e 'puts CGI.escape(ARGV[0])' "$*"`
}
