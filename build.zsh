#!/usr/bin/env zsh

here=$0:A:h

# Tags output with a green INFO string.
logln() {
  printf "\033[32m[INFO]\033[0m $@\n"
}

get_remote_assets() {
  # Plots are copied from this directory into ./assets/ whenever we build the
  # PDF. Check whether the path exists since its a remote mount.
  remote_assets_dir="/home/stan/.mnt/headnode/prj/caesr/benchmarks/plots"
  if [ -d $remote_assets_dir ]; then
    logln "Copying remote assets from $remote_assets_dir ..."
    cp $remote_assets_dir/* $here/assets
    logln " ... done!"
  else
    logln "Remote assets directory unavailable. Nothing will be done."
  fi
}

build_pdf() {
  logln "Building PDF ... "
  latexmk
  logln " ... done!"
}

get_remote_assets
build_pdf
