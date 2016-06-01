# Make sure we start in /scratch unless specified otherwise.
if [[ -n $KEEP_DIR ]]; then
  verbose Keeping current directory $fg[green]$PWD$reset_color
  unset KEEP_DIR
  return
fi

local start_dir=/scratch

if [[ ! -d "$start_dir" ]]; then
  verbose Startup directory $fg[green]$start_dir$reset_color does not exist, keeping current directory $fg[green]$PWD$reset_color
  return
fi

verbose Changing current directory from $fg[green]$PWD$reset_color to $fg[green]$start_dir$reset_color
cd "$start_dir"
