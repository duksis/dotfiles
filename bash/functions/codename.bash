#!/bin/bash

# Retruns a random codename
function codename {
  curl -Gs http://codenames.herokuapp.com/api/codenames -d lists=adjectives,animals -d filters=random | ruby -e 'require "json"; puts JSON.parse(ARGF.read).first'
}
