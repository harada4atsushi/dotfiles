if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

ANDROID_SDK=/Applications/eclipse/android
export PATH=$PATH:$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools
#export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/

# ls command color
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/haradaatsushi/.docker/boot2docker-vm

eval "$(hub alias -s)"
