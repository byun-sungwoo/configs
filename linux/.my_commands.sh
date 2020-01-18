C212ATTENDANCE=~/Documents/2019-fall/c212_ta/attendance
BYUNCONFIG=~/Documents/byun-sungwoo/configs
BYUNBYTRIS=~/Documents/byun-sungwoo/bytris

# update functions in bashrc
function update-bashrc() {
	source ~/.bashrc
}

# ssh to burrow as dsbyun
function dsbyun@burrow() {
	ssh dsbyun@burrow.soic.indiana.edu
}

# ssh to silo as dsbyun
function dsbyun@silo() {
	ssh dsbyun@silo.soic.indiana.edu
}

# Call the long ass gogh command
function gogh-color() {
	bash -c "$(wget -qO- https://git.io/vQgMr)"
}

# Update vim and tmux to configs
function update-config() {
	cp -v ~/.my_commands.sh $BYUNCONFIG/linux
	cp -v ~/.h212.sh $BYUNCONFIG/vim
	cp -v ~/.bashrc $BYUNCONFIG/linux
	cp -v ~/.tmux.conf $BYUNCONFIG/tmux
	cp -v ~/.vimrc $BYUNCONFIG/vim
}

# Star Wars
function starwars() {
	telnet towel.blinkenlights.nl
}

# Bytris
function bytris() {
	og_pwd=$(pwd)
	cd $BYUNBYTRIS
	./compilerun
	cd $og_pwd
}
