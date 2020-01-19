#    ███╗   ███╗██╗   ██╗      ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ███████╗   ███████╗██╗  ██╗
#    ████╗ ████║╚██╗ ██╔╝     ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗██╔════╝   ██╔════╝██║  ██║
#    ██╔████╔██║ ╚████╔╝      ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║███████╗   ███████╗███████║
#    ██║╚██╔╝██║  ╚██╔╝       ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║╚════██║   ╚════██║██╔══██║
# ██╗██║ ╚═╝ ██║   ██║███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝███████║██╗███████║██║  ██║
# ╚═╝╚═╝     ╚═╝   ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝╚══════╝╚═╝  ╚═╝

# Directories
C212ATTENDANCE=~/Documents/2019-fall/c212_ta/attendance
BYUNCONFIG=~/Documents/byun-sungwoo/configs
BYUNBYTRIS=~/Documents/byun-sungwoo/bytris
ECLIPSE_PATH=~/eclipse/java-2019-12/eclipse

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
	og_pwd=$(pwd)
	echo [copying home changes to config repository]
	cd $BYUNCONFIG
	cp -v ~/.my_commands.sh ~/.h212.sh ~/.bashrc linux
	cp -v ~/.tmux.conf tmux
	cp -v ~/.vimrc vim
	echo [push changes to github]
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

# Launch Eclipse
function eclipse_launch() {
	og_pwd=$(pwd)
	cd $ECLIPSE_PATH
	./eclipse
	cd $og_pwd
}
