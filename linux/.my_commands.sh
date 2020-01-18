#                                                                                                           __
#                                                                                                          /  |
#  _____  ____   __    __          _______   ______   _____  ____   _____  ____    ______   _______    ____$$ |  _______
# /     \/    \ /  |  /  |        /       | /      \ /     \/    \ /     \/    \  /      \ /       \  /    $$ | /       |
# $$$$$$ $$$$  |$$ |  $$ |       /$$$$$$$/ /$$$$$$  |$$$$$$ $$$$  |$$$$$$ $$$$  | $$$$$$  |$$$$$$$  |/$$$$$$$ |/$$$$$$$/
# $$ | $$ | $$ |$$ |  $$ |       $$ |      $$ |  $$ |$$ | $$ | $$ |$$ | $$ | $$ | /    $$ |$$ |  $$ |$$ |  $$ |$$      \
# $$ | $$ | $$ |$$ \__$$ |       $$ \_____ $$ \__$$ |$$ | $$ | $$ |$$ | $$ | $$ |/$$$$$$$ |$$ |  $$ |$$ \__$$ | $$$$$$  |
# $$ | $$ | $$ |$$    $$ | ______$$       |$$    $$/ $$ | $$ | $$ |$$ | $$ | $$ |$$    $$ |$$ |  $$ |$$    $$ |/     $$/
# $$/  $$/  $$/  $$$$$$$ |/      |$$$$$$$/  $$$$$$/  $$/  $$/  $$/ $$/  $$/  $$/  $$$$$$$/ $$/   $$/  $$$$$$$/ $$$$$$$/
#               /  \__$$ |$$$$$$/
#               $$    $$/
#                $$$$$$/

# Directories
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

# Gogh
function gogh-color() {
	bash -c "$(wget -qO- https://git.io/vQgMr)"
}

# Update vim and tmux to configs
function update-config() {
	cd $BYUNCONFIG
	cp -v ~/.my_commands.sh linux
	cp -v ~/.h212.sh linux
	cp -v ~/.bashrc linux
	cp -v ~/.tmux.conf tmux
	cp -v ~/.vimrc vim
	og_pwd=$(pwd)
	git add -A
	git commit -m "update-config"
	git push origin master
	cd $og_pwd
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
