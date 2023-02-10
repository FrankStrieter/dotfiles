
set -x
if grep --quiet microsoft /proc/version 2>/dev/null; then
		 export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
     export NVM_DIR=~/.nvm
     source ~/.nvm/nvm.sh
     export DOCKER_DEFAULT_PLATFORM=linux/amd64
	  
    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
    sudo /etc/init.d/dbus start &> /dev/null
fi
set +x