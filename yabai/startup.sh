#!/bin/bash
skhd &
yabai --start-service
yabai --load-sa
yabai --restart-service
yabai --config external_bar on
