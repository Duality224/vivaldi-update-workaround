#!/bin/bash

#takes a executable path as input variable and runs the executable independently from the terminal session it's run from
nohup "$@" &>/dev/null & disown %%
