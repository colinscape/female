#!/usr/bin/env coffee

females = require './females'

getFemale = () ->
  r = Math.random() * females[females.length-1].cumfreq
  cf = 0
  index = 0
  while cf < r
    current = females[index]
    cf = current.cumfreq
    ++index
  return current.name

module.exports = getFemale

if not module.parent?
  nFamilies = process.argv[2] or= 1
  console.log "#{getFemale()}" for i in [1..nFamilies]
