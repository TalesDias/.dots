#!/usr/bin/bash

i3-msg -t subscribe -m '[ "mode" ]' | jq .change

