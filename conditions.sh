# cond.sh - shell function conditions CODE
# Uses curl to get plain text current conditions
# International  Air Transport  Code -    IATA code for U. S. airports
# https://en.wikipedia.org/wiki/International_Air_Transport_Association_airport_code 
# Usage:
# conditions MCO  # will get current conditions for Orlando, FL
# You can alias various airports. Several are set below
# Remember to use upper case 
conditions() {
  curl http://tgftp.nws.noaa.gov/data/observations/metar/decoded/K${1}.TXT
}

# Some alias for various cities of interest
alias grr='conditions GRR' # Grand Rapids, Mi
alias stl='conditions STL' #  St. Louis, MO
alias mco='conditions MCO' # Orlando, FL

# Some other codes
# JFK - NYC
# SFO - San Francisco, Ca
# BOS - Boston, Ma - Logan
# ORD - Chicago, Il
# IAH - Houston, Tx
# LAX - Los Angles, Ca
# DCA - Washington, DC - National / Ronald Reagon
# SEA - Seattle/Tacoma, Wa. - SEATAC
# PDX - Portland, Or
# TPA - Tampa, Fl

